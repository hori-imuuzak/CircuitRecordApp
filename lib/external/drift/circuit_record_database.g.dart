// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circuit_record_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Car extends DataClass implements Insertable<Car> {
  final int id;
  final String name;
  final String memo;
  Car({required this.id, required this.name, required this.memo});
  factory Car.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Car(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      memo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}memo'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['memo'] = Variable<String>(memo);
    return map;
  }

  CarsCompanion toCompanion(bool nullToAbsent) {
    return CarsCompanion(
      id: Value(id),
      name: Value(name),
      memo: Value(memo),
    );
  }

  factory Car.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Car(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      memo: serializer.fromJson<String>(json['memo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'memo': serializer.toJson<String>(memo),
    };
  }

  Car copyWith({int? id, String? name, String? memo}) => Car(
        id: id ?? this.id,
        name: name ?? this.name,
        memo: memo ?? this.memo,
      );
  @override
  String toString() {
    return (StringBuffer('Car(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, memo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Car &&
          other.id == this.id &&
          other.name == this.name &&
          other.memo == this.memo);
}

class CarsCompanion extends UpdateCompanion<Car> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> memo;
  const CarsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.memo = const Value.absent(),
  });
  CarsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String memo,
  })  : name = Value(name),
        memo = Value(memo);
  static Insertable<Car> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? memo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (memo != null) 'memo': memo,
    });
  }

  CarsCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<String>? memo}) {
    return CarsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      memo: memo ?? this.memo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CarsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }
}

class $CarsTable extends Cars with TableInfo<$CarsTable, Car> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CarsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String?> memo = GeneratedColumn<String?>(
      'memo', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, memo];
  @override
  String get aliasedName => _alias ?? 'cars';
  @override
  String get actualTableName => 'cars';
  @override
  VerificationContext validateIntegrity(Insertable<Car> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('memo')) {
      context.handle(
          _memoMeta, memo.isAcceptableOrUnknown(data['memo']!, _memoMeta));
    } else if (isInserting) {
      context.missing(_memoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Car map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Car.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CarsTable createAlias(String alias) {
    return $CarsTable(attachedDatabase, alias);
  }
}

class Raceway extends DataClass implements Insertable<Raceway> {
  final int id;
  final String name;
  final String postalCode;
  final String address;
  final String imagePath;
  Raceway(
      {required this.id,
      required this.name,
      required this.postalCode,
      required this.address,
      required this.imagePath});
  factory Raceway.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Raceway(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      postalCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}postal_code'])!,
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
      imagePath: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['postal_code'] = Variable<String>(postalCode);
    map['address'] = Variable<String>(address);
    map['image_path'] = Variable<String>(imagePath);
    return map;
  }

  RacewaysCompanion toCompanion(bool nullToAbsent) {
    return RacewaysCompanion(
      id: Value(id),
      name: Value(name),
      postalCode: Value(postalCode),
      address: Value(address),
      imagePath: Value(imagePath),
    );
  }

  factory Raceway.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Raceway(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      postalCode: serializer.fromJson<String>(json['postalCode']),
      address: serializer.fromJson<String>(json['address']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'postalCode': serializer.toJson<String>(postalCode),
      'address': serializer.toJson<String>(address),
      'imagePath': serializer.toJson<String>(imagePath),
    };
  }

  Raceway copyWith(
          {int? id,
          String? name,
          String? postalCode,
          String? address,
          String? imagePath}) =>
      Raceway(
        id: id ?? this.id,
        name: name ?? this.name,
        postalCode: postalCode ?? this.postalCode,
        address: address ?? this.address,
        imagePath: imagePath ?? this.imagePath,
      );
  @override
  String toString() {
    return (StringBuffer('Raceway(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('postalCode: $postalCode, ')
          ..write('address: $address, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, postalCode, address, imagePath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Raceway &&
          other.id == this.id &&
          other.name == this.name &&
          other.postalCode == this.postalCode &&
          other.address == this.address &&
          other.imagePath == this.imagePath);
}

class RacewaysCompanion extends UpdateCompanion<Raceway> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> postalCode;
  final Value<String> address;
  final Value<String> imagePath;
  const RacewaysCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.postalCode = const Value.absent(),
    this.address = const Value.absent(),
    this.imagePath = const Value.absent(),
  });
  RacewaysCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String postalCode,
    required String address,
    required String imagePath,
  })  : name = Value(name),
        postalCode = Value(postalCode),
        address = Value(address),
        imagePath = Value(imagePath);
  static Insertable<Raceway> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? postalCode,
    Expression<String>? address,
    Expression<String>? imagePath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (postalCode != null) 'postal_code': postalCode,
      if (address != null) 'address': address,
      if (imagePath != null) 'image_path': imagePath,
    });
  }

  RacewaysCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? postalCode,
      Value<String>? address,
      Value<String>? imagePath}) {
    return RacewaysCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      postalCode: postalCode ?? this.postalCode,
      address: address ?? this.address,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (postalCode.present) {
      map['postal_code'] = Variable<String>(postalCode.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RacewaysCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('postalCode: $postalCode, ')
          ..write('address: $address, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }
}

class $RacewaysTable extends Raceways with TableInfo<$RacewaysTable, Raceway> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RacewaysTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _postalCodeMeta = const VerificationMeta('postalCode');
  @override
  late final GeneratedColumn<String?> postalCode = GeneratedColumn<String?>(
      'postal_code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumn<String?> address = GeneratedColumn<String?>(
      'address', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String?> imagePath = GeneratedColumn<String?>(
      'image_path', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, postalCode, address, imagePath];
  @override
  String get aliasedName => _alias ?? 'raceways';
  @override
  String get actualTableName => 'raceways';
  @override
  VerificationContext validateIntegrity(Insertable<Raceway> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('postal_code')) {
      context.handle(
          _postalCodeMeta,
          postalCode.isAcceptableOrUnknown(
              data['postal_code']!, _postalCodeMeta));
    } else if (isInserting) {
      context.missing(_postalCodeMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Raceway map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Raceway.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RacewaysTable createAlias(String alias) {
    return $RacewaysTable(attachedDatabase, alias);
  }
}

abstract class _$CircuitRecordDatabase extends GeneratedDatabase {
  _$CircuitRecordDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $CarsTable cars = $CarsTable(this);
  late final $RacewaysTable raceways = $RacewaysTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cars, raceways];
}
