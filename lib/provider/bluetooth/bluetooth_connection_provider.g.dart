// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth_connection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bluetoothConnectionHash() =>
    r'afd673143e9efe5a5b286d090c5cec60146ac620';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [bluetoothConnection].
@ProviderFor(bluetoothConnection)
const bluetoothConnectionProvider = BluetoothConnectionFamily();

/// See also [bluetoothConnection].
class BluetoothConnectionFamily extends Family<AsyncValue<List<BleDevice>>> {
  /// See also [bluetoothConnection].
  const BluetoothConnectionFamily();

  /// See also [bluetoothConnection].
  BluetoothConnectionProvider call(
    BleDevice device,
  ) {
    return BluetoothConnectionProvider(
      device,
    );
  }

  @override
  BluetoothConnectionProvider getProviderOverride(
    covariant BluetoothConnectionProvider provider,
  ) {
    return call(
      provider.device,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'bluetoothConnectionProvider';
}

/// See also [bluetoothConnection].
class BluetoothConnectionProvider
    extends AutoDisposeStreamProvider<List<BleDevice>> {
  /// See also [bluetoothConnection].
  BluetoothConnectionProvider(
    BleDevice device,
  ) : this._internal(
          (ref) => bluetoothConnection(
            ref as BluetoothConnectionRef,
            device,
          ),
          from: bluetoothConnectionProvider,
          name: r'bluetoothConnectionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bluetoothConnectionHash,
          dependencies: BluetoothConnectionFamily._dependencies,
          allTransitiveDependencies:
              BluetoothConnectionFamily._allTransitiveDependencies,
          device: device,
        );

  BluetoothConnectionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.device,
  }) : super.internal();

  final BleDevice device;

  @override
  Override overrideWith(
    Stream<List<BleDevice>> Function(BluetoothConnectionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: BluetoothConnectionProvider._internal(
        (ref) => create(ref as BluetoothConnectionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        device: device,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<BleDevice>> createElement() {
    return _BluetoothConnectionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BluetoothConnectionProvider && other.device == device;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, device.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BluetoothConnectionRef on AutoDisposeStreamProviderRef<List<BleDevice>> {
  /// The parameter `device` of this provider.
  BleDevice get device;
}

class _BluetoothConnectionProviderElement
    extends AutoDisposeStreamProviderElement<List<BleDevice>>
    with BluetoothConnectionRef {
  _BluetoothConnectionProviderElement(super.provider);

  @override
  BleDevice get device => (origin as BluetoothConnectionProvider).device;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
