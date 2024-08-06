import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/provider/bluetooth/bluetooth_available_provider.dart';
import 'package:background_ble_test/provider/database/register_device_list_provider.dart';

import 'package:background_ble_test/view/scan_view/scan_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Background BLE Test')),
      body: Consumer(builder: (context, ref, child) {
        final bluetoothAvailable = ref.watch(bluetoothAvailableProvider);
        final registerDeviceList = ref.watch(registerDeviceListProvider);
        return Center(
          child: switch (bluetoothAvailable) {
            AsyncData(:final value) => value
                ? switch (registerDeviceList) {
                    AsyncData(:final value) => ListView(
                        children: value
                            .map((device) => ListTile(
                                  title: Text(device.name),
                                  subtitle: Text(device.address),
                                ))
                            .toList(),
                      ),
                    AsyncError(:final error) => Text('error: $error'),
                    _ => const CircularProgressIndicator(),
                  }
                : const Text('Bluetooth Not Available'),
            AsyncError(:final error) => Text('error: $error'),
            _ => const CircularProgressIndicator(),
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ScanView()),
        ),
      ),
    );
  }
}
