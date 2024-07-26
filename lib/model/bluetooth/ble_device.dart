import 'package:freezed_annotation/freezed_annotation.dart';

part 'ble_device.freezed.dart';

@freezed
class BleDevice with _$BleDevice {
  const factory BleDevice({
    required String name,
    required String id,
  }) = _BleDevice;
}
