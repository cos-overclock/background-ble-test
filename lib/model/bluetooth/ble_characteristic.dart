import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble_characteristic.freezed.dart';

@freezed
class BleCharacteristic with _$BleCharacteristic {
  const factory BleCharacteristic({
    required String id,
  }) = _BleCharacteristic;
}
