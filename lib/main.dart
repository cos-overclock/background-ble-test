import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'api/bluetooth_api.dart';
import 'api/register_device_api.dart';

import 'api/impl/bluetooth_api_impl_blue_plus.dart';
import 'api/impl/register_device_api_impl_db.dart';

import 'database/deepsky_database.dart';
import 'database/device/ble_devices_dao.dart';

import 'model/device/ble_connection_state.dart';

import 'theme/theme.dart';
import 'view/main_view/main_view.dart';

void main() {
  FlutterForegroundTask.initCommunicationPort();

  // 依存性注入
  Get.put<DeepskyDatabase>(DeepskyDatabase());
  Get.put<BluetoothApi>(BluetoothApiImplBluePlus());
  Get.put<RegisterDeviceApi>(
      RegisterDeviceApiImplDb(BleDevicesDao(Get.find<DeepskyDatabase>())));

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = MaterialTheme(TextTheme());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ja", "JP")],
      home: const BackgroundTaskView(),
    );
  }
}

class BackgroundTaskView extends StatefulWidget {
  const BackgroundTaskView({super.key});

  @override
  State<BackgroundTaskView> createState() => _BackgroundTaskViewState();
}

class _BackgroundTaskViewState extends State<BackgroundTaskView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _requestPermission();
      _initService();
      _startService();
    });
  }

  @override
  Widget build(BuildContext context) => const MainView();

  Future _requestPermission() async {
    if (Platform.isAndroid) {
      if (!await FlutterForegroundTask.isIgnoringBatteryOptimizations) {
        await FlutterForegroundTask.requestIgnoreBatteryOptimization();
      }

      final NotificationPermission notificationPermissionState =
          await FlutterForegroundTask.checkNotificationPermission();
      if (notificationPermissionState != NotificationPermission.granted) {
        await FlutterForegroundTask.requestNotificationPermission();
      }
    }
  }

  Future _initService() async {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'bluetooth_foreground_service',
        channelName: 'CEP-Link',
        channelDescription: 'デバイスに接続中',
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
      ),
      iosNotificationOptions: const IOSNotificationOptions(
        showNotification: false,
        playSound: false,
      ),
      foregroundTaskOptions: ForegroundTaskOptions(
        eventAction: ForegroundTaskEventAction.repeat(1000),
        autoRunOnBoot: true,
        autoRunOnMyPackageReplaced: true,
        allowWakeLock: true,
        allowWifiLock: true,
      ),
    );
  }

  Future<ServiceRequestResult> _startService() async {
    if (await FlutterForegroundTask.isRunningService) {
      return FlutterForegroundTask.restartService();
    } else {
      return FlutterForegroundTask.startService(
        notificationTitle: 'CEP-Link',
        notificationText: 'デバイス接続中',
        notificationIcon: null,
        notificationButtons: List.empty(),
        callback: startCallback,
      );
    }
  }

  Future<ServiceRequestResult> _stopService() =>
      FlutterForegroundTask.stopService();
}

@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(MyTaskHandler());
}

class MyTaskHandler extends TaskHandler {
  // Called when the task is started.
  @override
  void onStart(DateTime timestamp) {
    // 依存性注入
    Get.put<DeepskyDatabase>(DeepskyDatabase());
    Get.put<BluetoothApi>(BluetoothApiImplBluePlus());
    Get.put<RegisterDeviceApi>(
        RegisterDeviceApiImplDb(BleDevicesDao(Get.find<DeepskyDatabase>())));

    print('onStart');
  }

  // Called every [ForegroundTaskOptions.interval] milliseconds.
  @override
  void onRepeatEvent(DateTime timestamp) async {
    final registerDeviceApi = Get.find<RegisterDeviceApi>();
    final bluetoothApi = Get.find<BluetoothApi>();
    final devices = await registerDeviceApi.getRegisterDevices();
    for (var device in devices) {
      if (device.connect) {
        // 接続モードの場合
        if (!bluetoothApi.isConnected(device)) {
          // 未接続の場合
          bluetoothApi.connectDevice(device);
          if (device.connectionState != BleConnectionState.connecting) {
            // 接続済でなければ接続済に更新する
            registerDeviceApi.updateConnectionState(
                device.address, BleConnectionState.connecting);
          }
        } else {
          if (device.connectionState != BleConnectionState.connected) {
            // 接続済でなければ接続済に更新する
            registerDeviceApi.updateConnectionState(
                device.address, BleConnectionState.connected);
          }
        }
      } else {
        if (bluetoothApi.isConnected(device)) {
          // 接続中の場合
          bluetoothApi.disconnectDevice(device);
          if (device.connectionState != BleConnectionState.disconnected) {
            // 接続済でなければ接続済に更新する
            registerDeviceApi.updateConnectionState(
                device.address, BleConnectionState.disconnected);
          }
        }
      }
    }
    print('onRepeatEvent');
  }

  // Called when the task is destroyed.
  @override
  void onDestroy(DateTime timestamp) {
    print('onDestroy');
  }

  // Called when data is sent using [FlutterForegroundTask.sendDataToTask].
  @override
  void onReceiveData(Object data) {
    print('onReceiveData: $data');
  }

  // Called when the notification button on the Android platform is pressed.
  @override
  void onNotificationButtonPressed(String id) {
    print('onNotificationButtonPressed: $id');
  }

  // Called when the notification itself on the Android platform is pressed.
  //
  // "android.permission.SYSTEM_ALERT_WINDOW" permission must be granted for
  // this function to be called.
  @override
  void onNotificationPressed() {
    FlutterForegroundTask.launchApp('/');
    print('onNotificationPressed');
  }

  // Called when the notification itself on the Android platform is dismissed
  // on Android 14 which allow this behaviour.
  @override
  void onNotificationDismissed() {
    print('onNotificationDismissed');
  }
}
