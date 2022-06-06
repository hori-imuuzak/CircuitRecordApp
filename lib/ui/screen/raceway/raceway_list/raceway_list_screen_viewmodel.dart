import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/repository/raceway_repository.dart';
import 'package:circuit_record/repository/di/repository_provider.dart';
import 'package:circuit_record/ui/screen/raceway/raceway_list/raceway_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final racewayListScreenViewModelProvider =
    StateNotifierProvider<RacewayListScreenViewModel, RacewayListState>(
  (ref) => RacewayListScreenViewModel(
    ref.read(racewayRepositoryProvider),
  ),
);

class RacewayListScreenViewModel extends ViewModel<RacewayListState> {
  final RacewayRepository _racewayRepository;

  RacewayListScreenViewModel(this._racewayRepository)
      : super(const RacewayListState());

  Future<void> getRaceways() async {
    final raceways = await _racewayRepository.findAll();
    state = state.copyWith(raceways: raceways);
  }

  Future<void> addRaceway() async {
    final raceway = await _racewayRepository.create(const Raceway());
    state = state.addRaceway(raceway);
  }

  Future<void> deleteRaceway(Raceway raceway) async {
    state = state.deleteRaceway(raceway);
  }

  Future<void> updateRaceway(Raceway raceway) async {
    state = state.updateRaceway(raceway);
  }
}
