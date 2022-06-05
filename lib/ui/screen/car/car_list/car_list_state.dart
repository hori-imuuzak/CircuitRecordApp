import 'package:circuit_record/entity/car/car.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_list_state.freezed.dart';

@freezed
class CarListState with _$CarListState {
  const factory CarListState({
    @Default(<Car>[]) List<Car> cars,
  }) = _CarListState;
}
