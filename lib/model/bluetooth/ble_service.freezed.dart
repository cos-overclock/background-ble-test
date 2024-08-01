// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BleService {
  String get id => throw _privateConstructorUsedError;
  List<BleCharacteristic> get characteristics =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BleServiceCopyWith<BleService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleServiceCopyWith<$Res> {
  factory $BleServiceCopyWith(
          BleService value, $Res Function(BleService) then) =
      _$BleServiceCopyWithImpl<$Res, BleService>;
  @useResult
  $Res call({String id, List<BleCharacteristic> characteristics});
}

/// @nodoc
class _$BleServiceCopyWithImpl<$Res, $Val extends BleService>
    implements $BleServiceCopyWith<$Res> {
  _$BleServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? characteristics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      characteristics: null == characteristics
          ? _value.characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<BleCharacteristic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleServiceImplCopyWith<$Res>
    implements $BleServiceCopyWith<$Res> {
  factory _$$BleServiceImplCopyWith(
          _$BleServiceImpl value, $Res Function(_$BleServiceImpl) then) =
      __$$BleServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<BleCharacteristic> characteristics});
}

/// @nodoc
class __$$BleServiceImplCopyWithImpl<$Res>
    extends _$BleServiceCopyWithImpl<$Res, _$BleServiceImpl>
    implements _$$BleServiceImplCopyWith<$Res> {
  __$$BleServiceImplCopyWithImpl(
      _$BleServiceImpl _value, $Res Function(_$BleServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? characteristics = null,
  }) {
    return _then(_$BleServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      characteristics: null == characteristics
          ? _value._characteristics
          : characteristics // ignore: cast_nullable_to_non_nullable
              as List<BleCharacteristic>,
    ));
  }
}

/// @nodoc

class _$BleServiceImpl implements _BleService {
  const _$BleServiceImpl(
      {required this.id,
      required final List<BleCharacteristic> characteristics})
      : _characteristics = characteristics;

  @override
  final String id;
  final List<BleCharacteristic> _characteristics;
  @override
  List<BleCharacteristic> get characteristics {
    if (_characteristics is EqualUnmodifiableListView) return _characteristics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristics);
  }

  @override
  String toString() {
    return 'BleService(id: $id, characteristics: $characteristics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._characteristics, _characteristics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_characteristics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleServiceImplCopyWith<_$BleServiceImpl> get copyWith =>
      __$$BleServiceImplCopyWithImpl<_$BleServiceImpl>(this, _$identity);
}

abstract class _BleService implements BleService {
  const factory _BleService(
          {required final String id,
          required final List<BleCharacteristic> characteristics}) =
      _$BleServiceImpl;

  @override
  String get id;
  @override
  List<BleCharacteristic> get characteristics;
  @override
  @JsonKey(ignore: true)
  _$$BleServiceImplCopyWith<_$BleServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
