import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/model/device/ble_device.dart';
import 'package:background_ble_test/api/bluetooth_api.dart';

part 'bluetooth_scan_result_provider.g.dart';

@riverpod
Stream<List<BleDevice>> bluetoothScanResult(BluetoothScanResultRef ref) {
  final bluetoothApi = Get.find<BluetoothApi>();
  bluetoothApi.startScan();
  ref.onDispose(() => bluetoothApi.stopScan());
  return bluetoothApi.watchScanDevice();
}
