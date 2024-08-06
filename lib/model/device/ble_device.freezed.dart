// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BleDevice {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get connect => throw _privateConstructorUsedError;
  ConnectionState get connectionState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleDeviceCopyWith<BleDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleDeviceCopyWith<$Res> {
  factory $BleDeviceCopyWith(BleDevice value, $Res Function(BleDevice) then) =
      _$BleDeviceCopyWithImpl<$Res, BleDevice>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      bool connect,
      ConnectionState connectionState});
}

/// @nodoc
class _$BleDeviceCopyWithImpl<$Res, $Val extends BleDevice>
    implements $BleDeviceCopyWith<$Res> {
  _$BleDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? connect = null,
    Object? connectionState = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      connect: null == connect
          ? _value.connect
          : connect // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionState: null == connectionState
          ? _value.connectionState
          : connectionState // ignore: cast_nullable_to_non_nullable
              as ConnectionState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleDeviceImplCopyWith<$Res>
    implements $BleDeviceCopyWith<$Res> {
  factory _$$BleDeviceImplCopyWith(
          _$BleDeviceImpl value, $Res Function(_$BleDeviceImpl) then) =
      __$$BleDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      bool connect,
      ConnectionState connectionState});
}

/// @nodoc
class __$$BleDeviceImplCopyWithImpl<$Res>
    extends _$BleDeviceCopyWithImpl<$Res, _$BleDeviceImpl>
    implements _$$BleDeviceImplCopyWith<$Res> {
  __$$BleDeviceImplCopyWithImpl(
      _$BleDeviceImpl _value, $Res Function(_$BleDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? connect = null,
    Object? connectionState = null,
  }) {
    return _then(_$BleDeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      connect: null == connect
          ? _value.connect
          : connect // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionState: null == connectionState
          ? _value.connectionState
          : connectionState // ignore: cast_nullable_to_non_nullable
              as ConnectionState,
    ));
  }
}

/// @nodoc

class _$BleDeviceImpl implements _BleDevice {
  const _$BleDeviceImpl(
      {required this.id,
      required this.name,
      required this.address,
      this.connect = false,
      this.connectionState = ConnectionState.disconnected});

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  @JsonKey()
  final bool connect;
  @override
  @JsonKey()
  final ConnectionState connectionState;

  @override
  String toString() {
    return 'BleDevice(id: $id, name: $name, address: $address, connect: $connect, connectionState: $connectionState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleDeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.connect, connect) || other.connect == connect) &&
            (identical(other.connectionState, connectionState) ||
                other.connectionState == connectionState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, address, connect, connectionState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleDeviceImplCopyWith<_$BleDeviceImpl> get copyWith =>
      __$$BleDeviceImplCopyWithImpl<_$BleDeviceImpl>(this, _$identity);
}

abstract class _BleDevice implements BleDevice {
  const factory _BleDevice(
      {required final int id,
      required final String name,
      required final String address,
      final bool connect,
      final ConnectionState connectionState}) = _$BleDeviceImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  bool get connect;
  @override
  ConnectionState get connectionState;
  @override
  @JsonKey(ignore: true)
  _$$BleDeviceImplCopyWith<_$BleDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
