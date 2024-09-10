import 'package:drift/drift.dart';

import 'package:background_ble_test/database/device/ble_devices.dart';
import 'package:background_ble_test/database/deepsky_database.dart';

import 'package:background_ble_test/model/device/ble_device.dart';
import 'package:background_ble_test/model/device/ble_connection_state.dart';

part 'ble_devices_dao.g.dart';

@DriftAccessor(tables: [BleDevices])
class BleDevicesDao extends DatabaseAccessor<DeepskyDatabase>
    with _$BleDevicesDaoMixin {
  BleDevicesDao(super.db);

  Stream<List<BleDevice>> watchRegisterDevices() => select(bleDevices).watch();

  Future<List<BleDevice>> getRegisterDevices() => select(bleDevices).get();

  Future registerBleDevice(BleDevice device) => into(bleDevices).insert(
      BleDevicesCompanion.insert(address: device.address, name: device.name));

  Future unregisterBleDevice(String address) =>
      (delete(bleDevices)..where((t) => t.address.equals(address))).go();

  Future updateConnectionMode(String address, bool connectMode) =>
      (update(bleDevices)..where((t) => t.address.equals(address)))
          .write(BleDevicesCompanion(connect: Value(connectMode)));

  Future updateConnectionState(String address, BleConnectionState state) =>
      (update(bleDevices)..where((t) => t.address.equals(address)))
          .write(BleDevicesCompanion(connectionState: Value(state)));
}
