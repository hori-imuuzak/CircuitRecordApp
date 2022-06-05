import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/external/drift/circuit_record_database.dart'
    as db;

abstract class RacewayRepository {
  Future<List<Raceway>> findAll();

  Future<Raceway> create(Raceway raceway);

  Future<bool> update(Raceway raceway);

  Future<bool> delete(Raceway raceway);
}

class RacewayRepositoryDatabase extends RacewayRepository {
  final db.CircuitRecordDatabase database;

  RacewayRepositoryDatabase(this.database);

  @override
  Future<List<Raceway>> findAll() async {
    final raceways = await database.racewayOperation.selectAll;
    return raceways
        .map(
          (e) => Raceway(
            id: e.id,
            name: e.name,
            postalCode: e.postalCode,
            address: e.address,
            imagePath: e.imagePath,
          ),
        )
        .toList();
  }

  @override
  Future<Raceway> create(Raceway raceway) async {
    return database.racewayOperation.add(raceway);
  }

  @override
  Future<bool> update(Raceway raceway) {
    return database.racewayOperation.update(raceway);
  }

  @override
  Future<bool> delete(Raceway raceway) {
    return database.racewayOperation.delete(raceway);
  }
}
