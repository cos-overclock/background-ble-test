import 'package:drift/drift.dart';

import 'package:background_ble_test/model/device/ble_connection_state.dart';

class ConnectionStateTypeConverter
    extends TypeConverter<BleConnectionState, String> {
  const ConnectionStateTypeConverter();

  @override
  BleConnectionState fromSql(String fromDb) =>
      BleConnectionState.values.byName(fromDb);

  @override
  String toSql(BleConnectionState value) => value.name;
}
