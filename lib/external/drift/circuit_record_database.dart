import 'dart:io';

import 'package:circuit_record/external/drift/car_operation.dart';
import 'package:circuit_record/external/drift/model/cars.dart';
import 'package:circuit_record/external/drift/model/raceways.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'circuit_record_database.g.dart';

@DriftDatabase(tables: [Cars, Raceways])
class CircuitRecordDatabase extends _$CircuitRecordDatabase {
  late final CarOperation carOperation;

  CircuitRecordDatabase() : super(_openConnection()) {
    carOperation = CarOperation(this);
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
