import 'package:freezed_annotation/freezed_annotation.dart';

import 'ble_connection_state.dart';

part 'ble_device.freezed.dart';

@freezed
class BleDevice with _$BleDevice {
  const factory BleDevice({
    required int id,
    required String name,
    required String address,
    @Default(false) bool connect,
    @Default(BleConnectionState.disconnected)
    BleConnectionState connectionState,
  }) = _BleDevice;
}
