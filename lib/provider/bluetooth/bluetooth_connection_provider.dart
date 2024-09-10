import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/model/device/ble_device.dart';

import 'package:background_ble_test/api/bluetooth_api.dart';

part 'bluetooth_connection_provider.g.dart';

@riverpod
Stream<List<BleDevice>> bluetoothConnection(
    BluetoothConnectionRef ref, BleDevice device) {
  final bluetoothApi = Get.find<BluetoothApi>();
  bluetoothApi.connectDevice(device);
  ref.onDispose(() => bluetoothApi.disconnectDevice(device));
  return bluetoothApi.watchScanDevice();
}
