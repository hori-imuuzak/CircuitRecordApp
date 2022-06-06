// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'raceway_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RacewayListState {
  List<Raceway> get raceways => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RacewayListStateCopyWith<RacewayListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RacewayListStateCopyWith<$Res> {
  factory $RacewayListStateCopyWith(
          RacewayListState value, $Res Function(RacewayListState) then) =
      _$RacewayListStateCopyWithImpl<$Res>;
  $Res call({List<Raceway> raceways});
}

/// @nodoc
class _$RacewayListStateCopyWithImpl<$Res>
    implements $RacewayListStateCopyWith<$Res> {
  _$RacewayListStateCopyWithImpl(this._value, this._then);

  final RacewayListState _value;
  // ignore: unused_field
  final $Res Function(RacewayListState) _then;

  @override
  $Res call({
    Object? raceways = freezed,
  }) {
    return _then(_value.copyWith(
      raceways: raceways == freezed
          ? _value.raceways
          : raceways // ignore: cast_nullable_to_non_nullable
              as List<Raceway>,
    ));
  }
}

/// @nodoc
abstract class _$$_RacewayListStateCopyWith<$Res>
    implements $RacewayListStateCopyWith<$Res> {
  factory _$$_RacewayListStateCopyWith(
          _$_RacewayListState value, $Res Function(_$_RacewayListState) then) =
      __$$_RacewayListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Raceway> raceways});
}

/// @nodoc
class __$$_RacewayListStateCopyWithImpl<$Res>
    extends _$RacewayListStateCopyWithImpl<$Res>
    implements _$$_RacewayListStateCopyWith<$Res> {
  __$$_RacewayListStateCopyWithImpl(
      _$_RacewayListState _value, $Res Function(_$_RacewayListState) _then)
      : super(_value, (v) => _then(v as _$_RacewayListState));

  @override
  _$_RacewayListState get _value => super._value as _$_RacewayListState;

  @override
  $Res call({
    Object? raceways = freezed,
  }) {
    return _then(_$_RacewayListState(
      raceways: raceways == freezed
          ? _value._raceways
          : raceways // ignore: cast_nullable_to_non_nullable
              as List<Raceway>,
    ));
  }
}

/// @nodoc

class _$_RacewayListState extends _RacewayListState {
  const _$_RacewayListState({final List<Raceway> raceways = const <Raceway>[]})
      : _raceways = raceways,
        super._();

  final List<Raceway> _raceways;
  @override
  @JsonKey()
  List<Raceway> get raceways {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_raceways);
  }

  @override
  String toString() {
    return 'RacewayListState(raceways: $raceways)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RacewayListState &&
            const DeepCollectionEquality().equals(other._raceways, _raceways));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_raceways));

  @JsonKey(ignore: true)
  @override
  _$$_RacewayListStateCopyWith<_$_RacewayListState> get copyWith =>
      __$$_RacewayListStateCopyWithImpl<_$_RacewayListState>(this, _$identity);
}

abstract class _RacewayListState extends RacewayListState {
  const factory _RacewayListState({final List<Raceway> raceways}) =
      _$_RacewayListState;
  const _RacewayListState._() : super._();

  @override
  List<Raceway> get raceways => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RacewayListStateCopyWith<_$_RacewayListState> get copyWith =>
      throw _privateConstructorUsedError;
}
