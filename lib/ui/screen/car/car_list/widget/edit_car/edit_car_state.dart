import 'package:circuit_record/entity/car/car.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_car_state.freezed.dart';

@freezed
class EditCarState with _$EditCarState {
  const EditCarState._();

  const factory EditCarState({
    @Default(Car()) Car car,
  }) = _EditCarState;
}
