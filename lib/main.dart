import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'database/deepsky_database.dart';
import 'provider/database/deepsky_database_provider.dart';

import 'api/impl/bluetooth_api_impl_blue_plus.dart';
import 'provider/bluetooth/bluetooth_api_provider.dart';

import 'api/impl/register_device_api_impl_db.dart';
import 'database/device/ble_devices_dao.dart';
import 'provider/database/register_device_api_provider.dart';

import 'theme/theme.dart';
import 'view/main_view/main_view.dart';

void main() {
  runApp(ProviderScope(
    overrides: [
      deepskyDatabaseProvider.overrideWithValue(DeepskyDatabase()),
      bluetoothApiProvider.overrideWithValue(BluetoothApiImplBluePlus()),
      registerDeviceApiProvider.overrideWith((ref) => RegisterDeviceApiImplDb(
          BleDevicesDao(ref.watch(deepskyDatabaseProvider)))),
    ],
    child: const MainApp(),
  ));
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
      home: const MainView(),
    );
  }
}
