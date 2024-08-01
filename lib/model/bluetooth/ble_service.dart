import 'package:freezed_annotation/freezed_annotation.dart';

import 'ble_characteristic.dart';

part 'ble_service.freezed.dart';

@freezed
class BleService with _$BleService {
  const factory BleService({
    required String id,
    required List<BleCharacteristic> characteristics,
  }) = _BleService;
}
