import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/api/register_device_api.dart';
import 'package:background_ble_test/model/device/ble_device.dart';

import 'package:background_ble_test/provider/database/register_device_list_provider.dart';

class ScanDeviceTile extends ConsumerWidget {
  const ScanDeviceTile(this.scanDevice, {super.key});

  final BleDevice scanDevice;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerDeviceList = ref.watch(registerDeviceListProvider);
    final registerDeviceApi = Get.find<RegisterDeviceApi>();

    return switch (registerDeviceList) {
      AsyncData(:final value) => ListTile(
          title: Text(scanDevice.name),
          subtitle: Text(scanDevice.address),
          leading:
              value.map((device) => device.address).contains(scanDevice.address)
                  ? const Icon(Icons.check)
                  : null,
          onTap: () {
            if (value
                .map((device) => device.address)
                .contains(scanDevice.address)) {
              registerDeviceApi.unregisterDevice(scanDevice.address);
            } else {
              registerDeviceApi.registerDevice(scanDevice);
            }
          },
        ),
      AsyncError(:final error) => Text('error: $error'),
      _ => const SizedBox.shrink(),
    };
  }
}
