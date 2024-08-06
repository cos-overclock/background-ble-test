import 'package:drift/drift.dart';

import 'package:background_ble_test/database/app/app_settings.dart';
import 'package:background_ble_test/database/deepsky_database.dart';

part 'app_settings_dao.g.dart';

@DriftAccessor(tables: [AppSettings])
class AppSettingsDao extends DatabaseAccessor<DeepskyDatabase>
    with _$AppSettingsDaoMixin {
  AppSettingsDao(super.db);

  Stream<bool> isAgreeTerm() =>
      select(appSettings).watchSingle().map((event) => event.isAgreeTerm);

  Future agreeTermsOfService() async => await update(appSettings)
      .write(const AppSettingsCompanion(isAgreeTerm: Value(true)));

  Future createRecord() async =>
      await into(appSettings).insert(AppSettingsCompanion.insert());

  Future<bool> hasRecord() async {
    final settings = await select(appSettings).get();
    return settings.isNotEmpty;
  }
}
