import 'package:circuit_record/external/drift/di/database_provider.dart';
import 'package:circuit_record/repository/car_repository.dart';
import 'package:circuit_record/repository/raceway_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final carRepositoryProvider = Provider<CarRepository>(
  (ref) => CarRepositoryDatabase(ref.read(databaseProvider)),
);

final racewayRepositoryProvider = Provider<RacewayRepository>(
  (ref) => RacewayRepositoryDatabase(ref.read(databaseProvider)),
);
