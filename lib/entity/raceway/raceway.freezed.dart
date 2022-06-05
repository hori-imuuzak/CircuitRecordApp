// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'raceway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Raceway {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RacewayCopyWith<Raceway> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RacewayCopyWith<$Res> {
  factory $RacewayCopyWith(Raceway value, $Res Function(Raceway) then) =
      _$RacewayCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String postalCode,
      String address,
      String imagePath});
}

/// @nodoc
class _$RacewayCopyWithImpl<$Res> implements $RacewayCopyWith<$Res> {
  _$RacewayCopyWithImpl(this._value, this._then);

  final Raceway _value;
  // ignore: unused_field
  final $Res Function(Raceway) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? postalCode = freezed,
    Object? address = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RacewayCopyWith<$Res> implements $RacewayCopyWith<$Res> {
  factory _$$_RacewayCopyWith(
          _$_Raceway value, $Res Function(_$_Raceway) then) =
      __$$_RacewayCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String postalCode,
      String address,
      String imagePath});
}

/// @nodoc
class __$$_RacewayCopyWithImpl<$Res> extends _$RacewayCopyWithImpl<$Res>
    implements _$$_RacewayCopyWith<$Res> {
  __$$_RacewayCopyWithImpl(_$_Raceway _value, $Res Function(_$_Raceway) _then)
      : super(_value, (v) => _then(v as _$_Raceway));

  @override
  _$_Raceway get _value => super._value as _$_Raceway;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? postalCode = freezed,
    Object? address = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_Raceway(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Raceway implements _Raceway {
  const _$_Raceway(
      {this.id = 0,
      this.name = "",
      this.postalCode = "",
      this.address = "",
      this.imagePath = ""});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String postalCode;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String imagePath;

  @override
  String toString() {
    return 'Raceway(id: $id, name: $name, postalCode: $postalCode, address: $address, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Raceway &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(postalCode),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_RacewayCopyWith<_$_Raceway> get copyWith =>
      __$$_RacewayCopyWithImpl<_$_Raceway>(this, _$identity);
}

abstract class _Raceway implements Raceway {
  const factory _Raceway(
      {final int id,
      final String name,
      final String postalCode,
      final String address,
      final String imagePath}) = _$_Raceway;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get postalCode => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RacewayCopyWith<_$_Raceway> get copyWith =>
      throw _privateConstructorUsedError;
}
