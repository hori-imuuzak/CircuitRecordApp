import 'dart:io';

import 'package:circuit_record/entity/car/car.dart' as e_car;
import 'package:circuit_record/external/drift/model/cars.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'circuit_record_database.g.dart';

@DriftDatabase(tables: [Cars])
class CircuitRecordDatabase extends _$CircuitRecordDatabase {
  CircuitRecordDatabase() : super(_openConnection());

  Future<List<Car>> get selectAllCars => select(cars).get();

  Future<e_car.Car> addCar(e_car.Car entity) async {
    final id = await into(cars).insert(
      CarsCompanion(
        name: Value(entity.name),
        memo: Value(entity.memo),
      ),
    );
    return entity.copyWith(id: id);
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
