import 'package:drift/drift.dart';

class AppSettings extends Table {
  BoolColumn get isAgreeTerm => boolean().withDefault(const Constant(false))();
}
