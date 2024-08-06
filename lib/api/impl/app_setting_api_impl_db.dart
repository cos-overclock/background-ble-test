import 'package:background_ble_test/api/app_setting_api.dart';
import 'package:background_ble_test/database/app/app_settings_dao.dart';

class AppSettingApiImplDb implements AppSettingApi {
  final AppSettingsDao dao;

  AppSettingApiImplDb(this.dao);

  @override
  Future agreeTermsOfService() async => await dao.agreeTermsOfService();

  @override
  Stream<bool> isAgreeTerms() async* {
    if (!await dao.hasRecord()) {
      await dao.createRecord();
    }
    yield* dao.isAgreeTerm();
  }
}
