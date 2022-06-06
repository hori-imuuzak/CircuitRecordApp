import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_raceway_state.freezed.dart';

@freezed
class EditRacewayState with _$EditRacewayState {
  const EditRacewayState._();

  const factory EditRacewayState({
    @Default(Raceway()) Raceway raceway,
  }) = _EditRacewayState;
}
