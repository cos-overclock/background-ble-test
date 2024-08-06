import 'package:background_ble_test/api/register_device_api.dart';
import 'package:background_ble_test/database/device/ble_devices_dao.dart';
import 'package:background_ble_test/model/device/ble_device.dart';

class RegisterDeviceApiImplDb implements RegisterDeviceApi {
  final BleDevicesDao dao;

  RegisterDeviceApiImplDb(this.dao);

  @override
  Future registerDevice(BleDevice device) => dao.registerBleDevice(device);

  @override
  Future unregisterDevice(BleDevice device) => dao.unregisterBleDevice(device);

  @override
  Stream<List<BleDevice>> watchRegisterDevices() => dao.watchRegisterDevices();
}
