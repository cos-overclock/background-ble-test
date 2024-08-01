import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/provider/bluetooth/bluetooth_scan_result_provider.dart';

import 'package:background_ble_test/view/device_view/device_view.dart';

class ScanView extends ConsumerWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scanResult = ref.watch(bluetoothScanResultProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Scan')),
      body: Container(
          child: switch (scanResult) {
        AsyncData(:final value) => ListView(
            children: value
                .where((device) => device.name != '')
                .map((device) => ListTile(
                      title: Text(device.name),
                      subtitle: Text(device.id),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeviceView(device: device)),
                      ),
                    ))
                .toList()),
        AsyncError(:final error) => Text('error: $error'),
        _ => const CircularProgressIndicator(),
      }),
    );
  }
}
