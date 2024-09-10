import 'package:get/get.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:background_ble_test/model/device/ble_device.dart';
import 'package:background_ble_test/api/register_device_api.dart';

part 'register_device_list_provider.g.dart';

@riverpod
Stream<List<BleDevice>> registerDeviceList(RegisterDeviceListRef ref) =>
    Get.find<RegisterDeviceApi>().watchRegisterDevices();
