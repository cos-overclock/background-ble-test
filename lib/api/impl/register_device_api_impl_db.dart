import 'package:background_ble_test/api/register_device_api.dart';
import 'package:background_ble_test/database/device/ble_devices_dao.dart';
import 'package:background_ble_test/model/device/ble_connection_state.dart';
import 'package:background_ble_test/model/device/ble_device.dart';

class RegisterDeviceApiImplDb implements RegisterDeviceApi {
  final BleDevicesDao dao;

  RegisterDeviceApiImplDb(this.dao);

  @override
  Future registerDevice(BleDevice device) => dao.registerBleDevice(device);

  @override
  Future unregisterDevice(String address) => dao.unregisterBleDevice(address);

  @override
  Stream<List<BleDevice>> watchRegisterDevices() => dao.watchRegisterDevices();

  @override
  Future updateConnectionMode(String address, bool connectMode) =>
      dao.updateConnectionMode(address, connectMode);

  @override
  Future updateConnectionState(String address, BleConnectionState state) =>
      dao.updateConnectionState(address, state);

  @override
  Future<List<BleDevice>> getRegisterDevices() => dao.getRegisterDevices();
}
