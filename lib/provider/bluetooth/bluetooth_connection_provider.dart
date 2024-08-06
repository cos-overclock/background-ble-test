import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/model/device/ble_device.dart';

import 'bluetooth_api_provider.dart';

part 'bluetooth_connection_provider.g.dart';

@riverpod
Stream<List<BleDevice>> bluetoothConnection(
    BluetoothConnectionRef ref, BleDevice device) {
  final bluetoothApi = ref.watch(bluetoothApiProvider);
  bluetoothApi.connectDevice(device);
  ref.onDispose(() => bluetoothApi.disconnectDevice(device));
  return bluetoothApi.watchScanDevice();
}
