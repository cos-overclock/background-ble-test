import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/model/bluetooth/ble_device.dart';

class DeviceView extends ConsumerWidget {
  const DeviceView({super.key, required this.device});

  final BleDevice device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(device.name)),
      body: Container(),
    );
  }
}
