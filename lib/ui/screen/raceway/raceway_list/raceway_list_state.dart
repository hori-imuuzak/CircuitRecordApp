import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raceway_list_state.freezed.dart';

@freezed
class RacewayListState with _$RacewayListState {
  const RacewayListState._();

  const factory RacewayListState({
    @Default(<Raceway>[]) List<Raceway> raceways,
  }) = _RacewayListState;

  RacewayListState addRaceway(Raceway raceway) {
    return copyWith(raceways: [...raceways, raceway]);
  }

  RacewayListState deleteRaceway(Raceway raceway) {
    return copyWith(
        raceways: raceways.where((e) => e.id != raceway.id).toList());
  }

  RacewayListState updateRaceway(Raceway raceway) {
    return copyWith(
        raceways:
            raceways.map((e) => e.id == raceway.id ? raceway : e).toList());
  }

  bool get isVisibleEmpty => raceways.isEmpty;
}
