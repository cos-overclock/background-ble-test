import 'package:drift/drift.dart';

import 'package:background_ble_test/model/device/connection_state.dart';

class ConnectionStateTypeConverter
    extends TypeConverter<ConnectionState, String> {
  const ConnectionStateTypeConverter();

  @override
  ConnectionState fromSql(String fromDb) =>
      ConnectionState.values.byName(fromDb);

  @override
  String toSql(ConnectionState value) => value.name;
}
