import 'package:background_ble_test/model/device/ble_connection_state.dart';
import 'package:background_ble_test/model/device/ble_device.dart';

abstract interface class RegisterDeviceApi {
  /// 登録デバイス一覧をモニターする
  Stream<List<BleDevice>> watchRegisterDevices();

  /// 登録デバイス一覧を取得する
  Future<List<BleDevice>> getRegisterDevices();

  /// デバイスを登録する
  Future registerDevice(BleDevice device);

  /// デバイスを削除する
  Future unregisterDevice(String address);

  /// デバイスの接続操作を更新する
  Future updateConnectionMode(String address, bool connectMode);

  /// デバイスの接続状態を更新する
  Future updateConnectionState(String address, BleConnectionState state);
}
