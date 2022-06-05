import 'package:circuit_record/external/drift/circuit_record_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final databaseProvider = Provider<CircuitRecordDatabase>(
  (ref) => CircuitRecordDatabase(),
);
