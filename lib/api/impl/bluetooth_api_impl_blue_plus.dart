import 'package:background_ble_test/model/bluetooth/ble_characteristic.dart';
import 'package:background_ble_test/model/bluetooth/ble_device.dart';
import 'package:background_ble_test/model/bluetooth/ble_service.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

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
                name: device.device.advName,
                id: device.device.remoteId.str,
              ))
          .toList())
      .asBroadcastStream();

  @override
  Future stopScan() async => await FlutterBluePlus.stopScan();

  @override
  Future<List<BleService>> connectDevice(BleDevice device) async {
    final bleDevice = BluetoothDevice.fromId(device.id);
    await bleDevice.connect(autoConnect: true);
    final serviceList = await bleDevice.discoverServices();
    return serviceList
        .map((service) => BleService(
              id: service.uuid.str,
              characteristics: service.characteristics
                  .map((characteristic) => BleCharacteristic(
                        id: characteristic.uuid.str,
                      ))
                  .toList(),
            ))
        .toList();
  }

  @override
  Future disconnectDevice(BleDevice device) async =>
      await BluetoothDevice.fromId(device.id).connect(autoConnect: true);
}
