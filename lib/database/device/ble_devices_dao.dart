import 'package:drift/drift.dart';

import 'package:background_ble_test/database/device/ble_devices.dart';
import 'package:background_ble_test/database/deepsky_database.dart';

import 'package:background_ble_test/model/device/ble_device.dart';

part 'ble_devices_dao.g.dart';

@DriftAccessor(tables: [BleDevices])
class BleDevicesDao extends DatabaseAccessor<DeepskyDatabase>
    with _$BleDevicesDaoMixin {
  BleDevicesDao(super.db);

  Stream<List<BleDevice>> watchRegisterDevices() => select(bleDevices).watch();

  Future registerBleDevice(BleDevice device) => into(bleDevices).insert(
      BleDevicesCompanion.insert(address: device.address, name: device.name));

  Future unregisterBleDevice(BleDevice device) =>
      (delete(bleDevices)..where((t) => t.address.equals(device.address))).go();
}
