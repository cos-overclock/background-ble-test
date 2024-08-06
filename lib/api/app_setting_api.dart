abstract interface class AppSettingApi {
  /// 規約同意状況を取得する
  Stream<bool> isAgreeTerms();

  /// 規約に同意する
  Future agreeTermsOfService();
}
