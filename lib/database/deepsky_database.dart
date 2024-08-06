import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'package:background_ble_test/model/device/ble_device.dart';
import 'package:background_ble_test/model/device/connection_state.dart';

import 'app/app_settings.dart';
import 'device/ble_devices.dart';
import 'device/connection_state_type_converter.dart';

part 'deepsky_database.g.dart';

@DriftDatabase(tables: [
  AppSettings,
  BleDevices,
])
class DeepskyDatabase extends _$DeepskyDatabase {
  // コードを生成した後、このクラスは `schemaVersion` のゲッターを定義する必要があります。
  // また、データベースの保存場所を指定するコンストラクタも必要です。
  // これらの詳細は、getting started guide に記載されています。
  // 'driftDatabase'は`package:drift_flutter`に依存しており、
  // `getApplicationDocumentsDirectory()`にデータベースファイルを保存する
  DeepskyDatabase() : super(driftDatabase(name: 'deepsky_database'));

  @override
  int get schemaVersion => 1;
}
