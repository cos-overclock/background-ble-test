import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import 'package:background_ble_test/model/device/ble_device.dart';

import '../bluetooth_api.dart';

class BluetoothApiImplBluePlus implements BluetoothApi {
  BluetoothApiImplBluePlus() {
    FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
  }

  @override
  Stream<bool> watchBluetoothAvailable() => FlutterBluePlus.adapterState
      .map((state) => state == BluetoothAdapterState.on)
      .asBroadcastStream();

  @override
  Stream<bool> watchIsScanning() => FlutterBluePlus.isScanning;

  @override
  Future startScan() async => await FlutterBluePlus.startScan();

  @override
  Stream<List<BleDevice>> watchScanDevice() => FlutterBluePlus.scanResults
      .map((results) => results
          .map((device) => BleDevice(
                id: 0,
                name: device.device.advName,
                address: device.device.remoteId.str,
              ))
          .toList())
      .asBroadcastStream();

  @override
  Future stopScan() async => await FlutterBluePlus.stopScan();

  @override
  Future connectDevice(BleDevice device) async =>
      await BluetoothDevice.fromId(device.address).connect(autoConnect: true);

  @override
  Future disconnectDevice(BleDevice device) async =>
      await BluetoothDevice.fromId(device.address).connect(autoConnect: true);
}
