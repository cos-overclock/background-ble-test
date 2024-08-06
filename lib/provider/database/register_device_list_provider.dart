import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/model/device/ble_device.dart';

import 'register_device_api_provider.dart';

part 'register_device_list_provider.g.dart';

@riverpod
Stream<List<BleDevice>> registerDeviceList(RegisterDeviceListRef ref) =>
    ref.watch(registerDeviceApiProvider).watchRegisterDevices();
