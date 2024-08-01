// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_characteristic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BleCharacteristic {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleCharacteristicCopyWith<BleCharacteristic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleCharacteristicCopyWith<$Res> {
  factory $BleCharacteristicCopyWith(
          BleCharacteristic value, $Res Function(BleCharacteristic) then) =
      _$BleCharacteristicCopyWithImpl<$Res, BleCharacteristic>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$BleCharacteristicCopyWithImpl<$Res, $Val extends BleCharacteristic>
    implements $BleCharacteristicCopyWith<$Res> {
  _$BleCharacteristicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleCharacteristicImplCopyWith<$Res>
    implements $BleCharacteristicCopyWith<$Res> {
  factory _$$BleCharacteristicImplCopyWith(_$BleCharacteristicImpl value,
          $Res Function(_$BleCharacteristicImpl) then) =
      __$$BleCharacteristicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$BleCharacteristicImplCopyWithImpl<$Res>
    extends _$BleCharacteristicCopyWithImpl<$Res, _$BleCharacteristicImpl>
    implements _$$BleCharacteristicImplCopyWith<$Res> {
  __$$BleCharacteristicImplCopyWithImpl(_$BleCharacteristicImpl _value,
      $Res Function(_$BleCharacteristicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$BleCharacteristicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BleCharacteristicImpl implements _BleCharacteristic {
  const _$BleCharacteristicImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'BleCharacteristic(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleCharacteristicImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleCharacteristicImplCopyWith<_$BleCharacteristicImpl> get copyWith =>
      __$$BleCharacteristicImplCopyWithImpl<_$BleCharacteristicImpl>(
          this, _$identity);
}

abstract class _BleCharacteristic implements BleCharacteristic {
  const factory _BleCharacteristic({required final String id}) =
      _$BleCharacteristicImpl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$BleCharacteristicImplCopyWith<_$BleCharacteristicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
