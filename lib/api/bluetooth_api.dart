import 'package:background_ble_test/model/bluetooth/ble_device.dart';

abstract interface class BluetoothApi {
  /// Bluetoothが使用可能かモニターする
  Stream<bool> watchBluetoothAvailable();

  /// スキャン中かモニターする
  Stream<bool> watchIsScanning();

  /// スキャンを開始する
  Future startScan();

  /// スキャンを停止する
  Future stopScan();

  /// スキャン結果をモニターする
  Stream<List<BleDevice>> watchScanDevice();

  /// デバイスに接続する
  Future connectDevice(BleDevice device);
}
