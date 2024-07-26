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
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleDeviceCopyWith<BleDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleDeviceCopyWith<$Res> {
  factory $BleDeviceCopyWith(BleDevice value, $Res Function(BleDevice) then) =
      _$BleDeviceCopyWithImpl<$Res, BleDevice>;
  @useResult
  $Res call({String name, String id});
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
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String name, String id});
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
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$BleDeviceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BleDeviceImpl implements _BleDevice {
  const _$BleDeviceImpl({required this.name, required this.id});

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'BleDevice(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleDeviceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleDeviceImplCopyWith<_$BleDeviceImpl> get copyWith =>
      __$$BleDeviceImplCopyWithImpl<_$BleDeviceImpl>(this, _$identity);
}

abstract class _BleDevice implements BleDevice {
  const factory _BleDevice(
      {required final String name, required final String id}) = _$BleDeviceImpl;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BleDeviceImplCopyWith<_$BleDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
