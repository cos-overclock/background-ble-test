import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/provider/bluetooth/bluetooth_available_provider.dart';

import 'package:background_ble_test/view/scan_view/scan_view.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bluetoothAvailable = ref.watch(bluetoothAvailableProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Background BLE Test')),
      body: Center(
        child: switch (bluetoothAvailable) {
          AsyncData(:final value) => value
              ? ElevatedButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScanView()),
                      ),
                  child: const Text('Start Scan'))
              : const Text('Bluetooth Not Available'),
          AsyncError(:final error) => Text('error: $error'),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
