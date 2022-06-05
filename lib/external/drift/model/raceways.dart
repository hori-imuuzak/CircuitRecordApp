import 'package:drift/drift.dart';

class Raceways extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get postalCode => text()();
  TextColumn get address => text()();
  TextColumn get imagePath => text()();
}
