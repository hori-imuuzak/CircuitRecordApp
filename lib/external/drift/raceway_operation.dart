import 'package:circuit_record/external/drift/circuit_record_database.dart';
import 'package:circuit_record/entity/raceway/raceway.dart' as e_raceway;
import 'package:drift/drift.dart';

class RacewayOperation {
  final CircuitRecordDatabase database;

  const RacewayOperation(this.database);

  Future<List<Raceway>> get selectAll =>
      database.select(database.raceways).get();

  Future<e_raceway.Raceway> add(e_raceway.Raceway entity) async {
    final id = await database.into(database.raceways).insert(
          RacewaysCompanion(
            name: Value(entity.name),
            postalCode: Value(entity.postalCode),
            address: Value(entity.address),
            imagePath: Value(entity.imagePath),
          ),
        );
    return entity.copyWith(id: id);
  }

  Future<bool> update(e_raceway.Raceway entity) {
    return database.update(database.raceways).replace(
          Raceway(
            id: entity.id,
            name: entity.name,
            postalCode: entity.postalCode,
            address: entity.address,
            imagePath: entity.imagePath,
          ),
        );
  }

  Future<bool> delete(e_raceway.Raceway entity) async {
    final result = await (database.delete(database.raceways)
          ..where(
            (t) => t.id.equals(entity.id),
          ))
        .go();
    return result >= 0;
  }
}
