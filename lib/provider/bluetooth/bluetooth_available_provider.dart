import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'bluetooth_api_provider.dart';

part 'bluetooth_available_provider.g.dart';

@riverpod
Stream<bool> bluetoothAvailable(BluetoothAvailableRef ref) =>
    ref.watch(bluetoothApiProvider).watchBluetoothAvailable();
