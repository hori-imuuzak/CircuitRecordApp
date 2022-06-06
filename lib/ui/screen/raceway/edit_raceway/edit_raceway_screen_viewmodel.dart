import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/repository/raceway_repository.dart';
import 'package:circuit_record/repository/di/repository_provider.dart';
import 'package:circuit_record/ui/screen/raceway/edit_raceway/edit_raceway_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editRacewayScreenViewModelProvider = StateNotifierProvider.family<
    EditRacewayScreenViewModel, EditRacewayState, Raceway>(
  (ref, raceway) => EditRacewayScreenViewModel(
    raceway,
    ref.read(racewayRepositoryProvider),
  ),
);

class EditRacewayScreenViewModel extends ViewModel<EditRacewayState> {
  final RacewayRepository _racewayRepository;

  EditRacewayScreenViewModel(Raceway raceway, this._racewayRepository)
      : super(EditRacewayState(raceway: raceway));

  Future<bool> deleteRaceway() async {
    return await _racewayRepository.delete(state.raceway);
  }

  Future<bool> updateRaceway(Raceway raceway) async {
    return await _racewayRepository.update(raceway);
  }
}
