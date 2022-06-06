// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_raceway_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditRacewayState {
  Raceway get raceway => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditRacewayStateCopyWith<EditRacewayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRacewayStateCopyWith<$Res> {
  factory $EditRacewayStateCopyWith(
          EditRacewayState value, $Res Function(EditRacewayState) then) =
      _$EditRacewayStateCopyWithImpl<$Res>;
  $Res call({Raceway raceway});

  $RacewayCopyWith<$Res> get raceway;
}

/// @nodoc
class _$EditRacewayStateCopyWithImpl<$Res>
    implements $EditRacewayStateCopyWith<$Res> {
  _$EditRacewayStateCopyWithImpl(this._value, this._then);

  final EditRacewayState _value;
  // ignore: unused_field
  final $Res Function(EditRacewayState) _then;

  @override
  $Res call({
    Object? raceway = freezed,
  }) {
    return _then(_value.copyWith(
      raceway: raceway == freezed
          ? _value.raceway
          : raceway // ignore: cast_nullable_to_non_nullable
              as Raceway,
    ));
  }

  @override
  $RacewayCopyWith<$Res> get raceway {
    return $RacewayCopyWith<$Res>(_value.raceway, (value) {
      return _then(_value.copyWith(raceway: value));
    });
  }
}

/// @nodoc
abstract class _$$_EditRacewayStateCopyWith<$Res>
    implements $EditRacewayStateCopyWith<$Res> {
  factory _$$_EditRacewayStateCopyWith(
          _$_EditRacewayState value, $Res Function(_$_EditRacewayState) then) =
      __$$_EditRacewayStateCopyWithImpl<$Res>;
  @override
  $Res call({Raceway raceway});

  @override
  $RacewayCopyWith<$Res> get raceway;
}

/// @nodoc
class __$$_EditRacewayStateCopyWithImpl<$Res>
    extends _$EditRacewayStateCopyWithImpl<$Res>
    implements _$$_EditRacewayStateCopyWith<$Res> {
  __$$_EditRacewayStateCopyWithImpl(
      _$_EditRacewayState _value, $Res Function(_$_EditRacewayState) _then)
      : super(_value, (v) => _then(v as _$_EditRacewayState));

  @override
  _$_EditRacewayState get _value => super._value as _$_EditRacewayState;

  @override
  $Res call({
    Object? raceway = freezed,
  }) {
    return _then(_$_EditRacewayState(
      raceway: raceway == freezed
          ? _value.raceway
          : raceway // ignore: cast_nullable_to_non_nullable
              as Raceway,
    ));
  }
}

/// @nodoc

class _$_EditRacewayState extends _EditRacewayState {
  const _$_EditRacewayState({this.raceway = const Raceway()}) : super._();

  @override
  @JsonKey()
  final Raceway raceway;

  @override
  String toString() {
    return 'EditRacewayState(raceway: $raceway)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditRacewayState &&
            const DeepCollectionEquality().equals(other.raceway, raceway));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(raceway));

  @JsonKey(ignore: true)
  @override
  _$$_EditRacewayStateCopyWith<_$_EditRacewayState> get copyWith =>
      __$$_EditRacewayStateCopyWithImpl<_$_EditRacewayState>(this, _$identity);
}

abstract class _EditRacewayState extends EditRacewayState {
  const factory _EditRacewayState({final Raceway raceway}) =
      _$_EditRacewayState;
  const _EditRacewayState._() : super._();

  @override
  Raceway get raceway => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditRacewayStateCopyWith<_$_EditRacewayState> get copyWith =>
      throw _privateConstructorUsedError;
}
