import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/external/drift/circuit_record_database.dart'
    as db;

abstract class CarRepository {
  Future<List<Car>> findAll();

  Future<Car> create(Car car);
}

class CarRepositoryDatabase extends CarRepository {
  final db.CircuitRecordDatabase database;

  CarRepositoryDatabase(this.database);

  @override
  Future<List<Car>> findAll() async {
    final cars = await database.selectAllCars;
    return cars
        .map(
          (e) => Car(
            id: e.id,
            name: e.name,
            memo: e.memo,
          ),
        )
        .toList();
  }

  @override
  Future<Car> create(Car car) async {
    return database.addCar(car);
  }
}
