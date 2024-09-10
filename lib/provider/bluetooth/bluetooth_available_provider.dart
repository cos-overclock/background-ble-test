import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/api/bluetooth_api.dart';

part 'bluetooth_available_provider.g.dart';

@riverpod
Stream<bool> bluetoothAvailable(BluetoothAvailableRef ref) =>
    Get.find<BluetoothApi>().watchBluetoothAvailable();
