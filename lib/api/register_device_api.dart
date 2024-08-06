import 'package:background_ble_test/model/device/ble_device.dart';

abstract interface class RegisterDeviceApi {
  /// 登録デバイス一覧を取得する
  Stream<List<BleDevice>> watchRegisterDevices();

  /// デバイスを登録する
  Future registerDevice(BleDevice device);

  Future unregisterDevice(BleDevice device);
}
