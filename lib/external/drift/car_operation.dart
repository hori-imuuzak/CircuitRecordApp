import 'package:circuit_record/external/drift/circuit_record_database.dart';
import 'package:circuit_record/entity/car/car.dart' as e_car;
import 'package:drift/drift.dart';

class CarOperation {
  final CircuitRecordDatabase database;

  const CarOperation(this.database);

  Future<List<Car>> get selectAll => database.select(database.cars).get();

  Future<e_car.Car> add(e_car.Car entity) async {
    final id = await database.into(database.cars).insert(
          CarsCompanion(
            name: Value(entity.name),
            memo: Value(entity.memo),
          ),
        );
    return entity.copyWith(id: id);
  }

  Future<bool> update(e_car.Car entity) {
    return database.update(database.cars).replace(
          Car(
            id: entity.id,
            name: entity.name,
            memo: entity.memo,
          ),
        );
  }

  Future<bool> delete(e_car.Car entity) async {
    final result = await (database.delete(database.cars)
          ..where(
            (t) => t.id.equals(entity.id),
          ))
        .go();
    return result >= 0;
  }
}
