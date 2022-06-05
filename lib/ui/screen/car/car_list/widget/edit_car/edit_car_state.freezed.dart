// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_car_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditCarState {
  Car get car => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCarStateCopyWith<EditCarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCarStateCopyWith<$Res> {
  factory $EditCarStateCopyWith(
          EditCarState value, $Res Function(EditCarState) then) =
      _$EditCarStateCopyWithImpl<$Res>;
  $Res call({Car car});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$EditCarStateCopyWithImpl<$Res> implements $EditCarStateCopyWith<$Res> {
  _$EditCarStateCopyWithImpl(this._value, this._then);

  final EditCarState _value;
  // ignore: unused_field
  final $Res Function(EditCarState) _then;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(_value.copyWith(
      car: car == freezed
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }

  @override
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value));
    });
  }
}

/// @nodoc
abstract class _$$_EditCarStateCopyWith<$Res>
    implements $EditCarStateCopyWith<$Res> {
  factory _$$_EditCarStateCopyWith(
          _$_EditCarState value, $Res Function(_$_EditCarState) then) =
      __$$_EditCarStateCopyWithImpl<$Res>;
  @override
  $Res call({Car car});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$_EditCarStateCopyWithImpl<$Res>
    extends _$EditCarStateCopyWithImpl<$Res>
    implements _$$_EditCarStateCopyWith<$Res> {
  __$$_EditCarStateCopyWithImpl(
      _$_EditCarState _value, $Res Function(_$_EditCarState) _then)
      : super(_value, (v) => _then(v as _$_EditCarState));

  @override
  _$_EditCarState get _value => super._value as _$_EditCarState;

  @override
  $Res call({
    Object? car = freezed,
  }) {
    return _then(_$_EditCarState(
      car: car == freezed
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
    ));
  }
}

/// @nodoc

class _$_EditCarState extends _EditCarState {
  const _$_EditCarState({this.car = const Car()}) : super._();

  @override
  @JsonKey()
  final Car car;

  @override
  String toString() {
    return 'EditCarState(car: $car)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditCarState &&
            const DeepCollectionEquality().equals(other.car, car));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(car));

  @JsonKey(ignore: true)
  @override
  _$$_EditCarStateCopyWith<_$_EditCarState> get copyWith =>
      __$$_EditCarStateCopyWithImpl<_$_EditCarState>(this, _$identity);
}

abstract class _EditCarState extends EditCarState {
  const factory _EditCarState({final Car car}) = _$_EditCarState;
  const _EditCarState._() : super._();

  @override
  Car get car => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditCarStateCopyWith<_$_EditCarState> get copyWith =>
      throw _privateConstructorUsedError;
}
