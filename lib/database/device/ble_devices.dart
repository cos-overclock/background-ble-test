import 'package:background_ble_test/model/device/ble_connection_state.dart';
import 'package:drift/drift.dart';

import 'package:background_ble_test/model/device/ble_device.dart';

import 'connection_state_type_converter.dart';

@UseRowClass(BleDevice)
class BleDevices extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get address => text()();
  TextColumn get name => text()();
  BoolColumn get connect => boolean().withDefault(const Constant(false))();
  TextColumn get connectionState => text()
      .map(const ConnectionStateTypeConverter())
      .withDefault(Constant(BleConnectionState.disconnected.name))();
}
