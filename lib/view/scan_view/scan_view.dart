import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/provider/bluetooth/bluetooth_scan_result_provider.dart';

import 'package:background_ble_test/value/strings.dart';

import 'scan_device_tile.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Consumer(builder: (context, ref, child) {
        final scanResult = ref.watch(bluetoothScanResultProvider);

        return switch (scanResult) {
          AsyncData(:final value) => ListView(
              children: value
                  .where((device) => deviceNameList.contains(device.name))
                  .map((device) => ScanDeviceTile(device))
                  .toList()),
          AsyncError(:final error) => Center(child: Text('error: $error')),
          _ => const Center(child: CircularProgressIndicator()),
        };
      }),
    );
  }
}
