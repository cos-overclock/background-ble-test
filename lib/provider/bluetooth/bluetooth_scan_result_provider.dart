import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/model/bluetooth/ble_device.dart';

import 'bluetooth_api_provider.dart';

part 'bluetooth_scan_result_provider.g.dart';

@riverpod
Stream<List<BleDevice>> bluetoothScanResult(BluetoothScanResultRef ref) {
  final bluetoothApi = ref.watch(bluetoothApiProvider);
  bluetoothApi.startScan();
  ref.onDispose(() => bluetoothApi.stopScan());
  return bluetoothApi.watchScanDevice();
}
