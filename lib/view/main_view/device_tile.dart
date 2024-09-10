import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/model/device/ble_device.dart';
import 'package:background_ble_test/model/device/ble_connection_state.dart';

import 'package:background_ble_test/api/register_device_api.dart';

class DeviceTile extends ConsumerWidget {
  const DeviceTile(this.device, {super.key});

  final BleDevice device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerDeviceApi = Get.find<RegisterDeviceApi>();
    return ListTile(
      leading: _connectionStateIcon(context, device.connectionState),
      title: Text(device.name),
      subtitle: Text(device.address),
      trailing: device.connect ? const Icon(Icons.check) : null,
      onTap: () => registerDeviceApi.updateConnectionMode(
          device.address, !device.connect),
    );
  }

  Widget _connectionStateIcon(BuildContext context, BleConnectionState state) {
    return switch (state) {
      BleConnectionState.disconnected =>
        Icon(Icons.circle, color: Theme.of(context).colorScheme.tertiary),
      BleConnectionState.connecting => Icon(Icons.circle_outlined,
          color: Theme.of(context).colorScheme.primary),
      BleConnectionState.connected =>
        Icon(Icons.circle, color: Theme.of(context).colorScheme.primary),
    };
  }
}
