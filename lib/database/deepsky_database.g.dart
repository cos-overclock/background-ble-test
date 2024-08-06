// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deepsky_database.dart';

// ignore_for_file: type=lint
class $AppSettingsTable extends AppSettings
    with TableInfo<$AppSettingsTable, AppSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _isAgreeTermMeta =
      const VerificationMeta('isAgreeTerm');
  @override
  late final GeneratedColumn<bool> isAgreeTerm = GeneratedColumn<bool>(
      'is_agree_term', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_agree_term" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [isAgreeTerm];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'app_settings';
  @override
  VerificationContext validateIntegrity(Insertable<AppSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('is_agree_term')) {
      context.handle(
          _isAgreeTermMeta,
          isAgreeTerm.isAcceptableOrUnknown(
              data['is_agree_term']!, _isAgreeTermMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  AppSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppSetting(
      isAgreeTerm: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_agree_term'])!,
    );
  }

  @override
  $AppSettingsTable createAlias(String alias) {
    return $AppSettingsTable(attachedDatabase, alias);
  }
}

class AppSetting extends DataClass implements Insertable<AppSetting> {
  final bool isAgreeTerm;
  const AppSetting({required this.isAgreeTerm});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['is_agree_term'] = Variable<bool>(isAgreeTerm);
    return map;
  }

  AppSettingsCompanion toCompanion(bool nullToAbsent) {
    return AppSettingsCompanion(
      isAgreeTerm: Value(isAgreeTerm),
    );
  }

  factory AppSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppSetting(
      isAgreeTerm: serializer.fromJson<bool>(json['isAgreeTerm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'isAgreeTerm': serializer.toJson<bool>(isAgreeTerm),
    };
  }

  AppSetting copyWith({bool? isAgreeTerm}) => AppSetting(
        isAgreeTerm: isAgreeTerm ?? this.isAgreeTerm,
      );
  AppSetting copyWithCompanion(AppSettingsCompanion data) {
    return AppSetting(
      isAgreeTerm:
          data.isAgreeTerm.present ? data.isAgreeTerm.value : this.isAgreeTerm,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AppSetting(')
          ..write('isAgreeTerm: $isAgreeTerm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => isAgreeTerm.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppSetting && other.isAgreeTerm == this.isAgreeTerm);
}

class AppSettingsCompanion extends UpdateCompanion<AppSetting> {
  final Value<bool> isAgreeTerm;
  final Value<int> rowid;
  const AppSettingsCompanion({
    this.isAgreeTerm = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppSettingsCompanion.insert({
    this.isAgreeTerm = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<AppSetting> custom({
    Expression<bool>? isAgreeTerm,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (isAgreeTerm != null) 'is_agree_term': isAgreeTerm,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppSettingsCompanion copyWith({Value<bool>? isAgreeTerm, Value<int>? rowid}) {
    return AppSettingsCompanion(
      isAgreeTerm: isAgreeTerm ?? this.isAgreeTerm,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (isAgreeTerm.present) {
      map['is_agree_term'] = Variable<bool>(isAgreeTerm.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppSettingsCompanion(')
          ..write('isAgreeTerm: $isAgreeTerm, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BleDevicesTable extends BleDevices
    with TableInfo<$BleDevicesTable, BleDevice> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BleDevicesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _connectMeta =
      const VerificationMeta('connect');
  @override
  late final GeneratedColumn<bool> connect = GeneratedColumn<bool>(
      'connect', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("connect" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _connectionStateMeta =
      const VerificationMeta('connectionState');
  @override
  late final GeneratedColumnWithTypeConverter<ConnectionState, String>
      connectionState = GeneratedColumn<String>(
              'connection_state', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant(ConnectionState.disconnected.name))
          .withConverter<ConnectionState>(
              $BleDevicesTable.$converterconnectionState);
  @override
  List<GeneratedColumn> get $columns =>
      [id, address, name, connect, connectionState];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'ble_devices';
  @override
  VerificationContext validateIntegrity(Insertable<BleDevice> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('connect')) {
      context.handle(_connectMeta,
          connect.isAcceptableOrUnknown(data['connect']!, _connectMeta));
    }
    context.handle(_connectionStateMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BleDevice map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BleDevice(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      connect: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}connect'])!,
      connectionState: $BleDevicesTable.$converterconnectionState.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}connection_state'])!),
    );
  }

  @override
  $BleDevicesTable createAlias(String alias) {
    return $BleDevicesTable(attachedDatabase, alias);
  }

  static TypeConverter<ConnectionState, String> $converterconnectionState =
      const ConnectionStateTypeConverter();
}

class BleDevicesCompanion extends UpdateCompanion<BleDevice> {
  final Value<int> id;
  final Value<String> address;
  final Value<String> name;
  final Value<bool> connect;
  final Value<ConnectionState> connectionState;
  const BleDevicesCompanion({
    this.id = const Value.absent(),
    this.address = const Value.absent(),
    this.name = const Value.absent(),
    this.connect = const Value.absent(),
    this.connectionState = const Value.absent(),
  });
  BleDevicesCompanion.insert({
    this.id = const Value.absent(),
    required String address,
    required String name,
    this.connect = const Value.absent(),
    this.connectionState = const Value.absent(),
  })  : address = Value(address),
        name = Value(name);
  static Insertable<BleDevice> custom({
    Expression<int>? id,
    Expression<String>? address,
    Expression<String>? name,
    Expression<bool>? connect,
    Expression<String>? connectionState,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (address != null) 'address': address,
      if (name != null) 'name': name,
      if (connect != null) 'connect': connect,
      if (connectionState != null) 'connection_state': connectionState,
    });
  }

  BleDevicesCompanion copyWith(
      {Value<int>? id,
      Value<String>? address,
      Value<String>? name,
      Value<bool>? connect,
      Value<ConnectionState>? connectionState}) {
    return BleDevicesCompanion(
      id: id ?? this.id,
      address: address ?? this.address,
      name: name ?? this.name,
      connect: connect ?? this.connect,
      connectionState: connectionState ?? this.connectionState,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (connect.present) {
      map['connect'] = Variable<bool>(connect.value);
    }
    if (connectionState.present) {
      map['connection_state'] = Variable<String>($BleDevicesTable
          .$converterconnectionState
          .toSql(connectionState.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BleDevicesCompanion(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('name: $name, ')
          ..write('connect: $connect, ')
          ..write('connectionState: $connectionState')
          ..write(')'))
        .toString();
  }
}

abstract class _$DeepskyDatabase extends GeneratedDatabase {
  _$DeepskyDatabase(QueryExecutor e) : super(e);
  $DeepskyDatabaseManager get managers => $DeepskyDatabaseManager(this);
  late final $AppSettingsTable appSettings = $AppSettingsTable(this);
  late final $BleDevicesTable bleDevices = $BleDevicesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [appSettings, bleDevices];
}

typedef $$AppSettingsTableCreateCompanionBuilder = AppSettingsCompanion
    Function({
  Value<bool> isAgreeTerm,
  Value<int> rowid,
});
typedef $$AppSettingsTableUpdateCompanionBuilder = AppSettingsCompanion
    Function({
  Value<bool> isAgreeTerm,
  Value<int> rowid,
});

class $$AppSettingsTableTableManager extends RootTableManager<
    _$DeepskyDatabase,
    $AppSettingsTable,
    AppSetting,
    $$AppSettingsTableFilterComposer,
    $$AppSettingsTableOrderingComposer,
    $$AppSettingsTableCreateCompanionBuilder,
    $$AppSettingsTableUpdateCompanionBuilder> {
  $$AppSettingsTableTableManager(_$DeepskyDatabase db, $AppSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AppSettingsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AppSettingsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<bool> isAgreeTerm = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AppSettingsCompanion(
            isAgreeTerm: isAgreeTerm,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<bool> isAgreeTerm = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AppSettingsCompanion.insert(
            isAgreeTerm: isAgreeTerm,
            rowid: rowid,
          ),
        ));
}

class $$AppSettingsTableFilterComposer
    extends FilterComposer<_$DeepskyDatabase, $AppSettingsTable> {
  $$AppSettingsTableFilterComposer(super.$state);
  ColumnFilters<bool> get isAgreeTerm => $state.composableBuilder(
      column: $state.table.isAgreeTerm,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AppSettingsTableOrderingComposer
    extends OrderingComposer<_$DeepskyDatabase, $AppSettingsTable> {
  $$AppSettingsTableOrderingComposer(super.$state);
  ColumnOrderings<bool> get isAgreeTerm => $state.composableBuilder(
      column: $state.table.isAgreeTerm,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BleDevicesTableCreateCompanionBuilder = BleDevicesCompanion Function({
  Value<int> id,
  required String address,
  required String name,
  Value<bool> connect,
  Value<ConnectionState> connectionState,
});
typedef $$BleDevicesTableUpdateCompanionBuilder = BleDevicesCompanion Function({
  Value<int> id,
  Value<String> address,
  Value<String> name,
  Value<bool> connect,
  Value<ConnectionState> connectionState,
});

class $$BleDevicesTableTableManager extends RootTableManager<
    _$DeepskyDatabase,
    $BleDevicesTable,
    BleDevice,
    $$BleDevicesTableFilterComposer,
    $$BleDevicesTableOrderingComposer,
    $$BleDevicesTableCreateCompanionBuilder,
    $$BleDevicesTableUpdateCompanionBuilder> {
  $$BleDevicesTableTableManager(_$DeepskyDatabase db, $BleDevicesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BleDevicesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BleDevicesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> connect = const Value.absent(),
            Value<ConnectionState> connectionState = const Value.absent(),
          }) =>
              BleDevicesCompanion(
            id: id,
            address: address,
            name: name,
            connect: connect,
            connectionState: connectionState,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String address,
            required String name,
            Value<bool> connect = const Value.absent(),
            Value<ConnectionState> connectionState = const Value.absent(),
          }) =>
              BleDevicesCompanion.insert(
            id: id,
            address: address,
            name: name,
            connect: connect,
            connectionState: connectionState,
          ),
        ));
}

class $$BleDevicesTableFilterComposer
    extends FilterComposer<_$DeepskyDatabase, $BleDevicesTable> {
  $$BleDevicesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get connect => $state.composableBuilder(
      column: $state.table.connect,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<ConnectionState, ConnectionState, String>
      get connectionState => $state.composableBuilder(
          column: $state.table.connectionState,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$BleDevicesTableOrderingComposer
    extends OrderingComposer<_$DeepskyDatabase, $BleDevicesTable> {
  $$BleDevicesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get connect => $state.composableBuilder(
      column: $state.table.connect,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get connectionState => $state.composableBuilder(
      column: $state.table.connectionState,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $DeepskyDatabaseManager {
  final _$DeepskyDatabase _db;
  $DeepskyDatabaseManager(this._db);
  $$AppSettingsTableTableManager get appSettings =>
      $$AppSettingsTableTableManager(_db, _db.appSettings);
  $$BleDevicesTableTableManager get bleDevices =>
      $$BleDevicesTableTableManager(_db, _db.bleDevices);
}
