import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/repository/car_repository.dart';
import 'package:circuit_record/repository/di/repository_provider.dart';
import 'package:circuit_record/ui/screen/car/car_list/widget/edit_car/edit_car_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final editCarScreenViewModelProvider =
    StateNotifierProvider.family<EditCarScreenViewModel, EditCarState, Car>(
  (ref, car) => EditCarScreenViewModel(
    car,
    ref.read(carRepositoryProvider),
  ),
);

class EditCarScreenViewModel extends ViewModel<EditCarState> {
  final CarRepository _carRepository;

  EditCarScreenViewModel(Car car, this._carRepository)
      : super(EditCarState(car: car));

  Future<bool> deleteCar() async {
    return await _carRepository.delete(state.car);
  }
}
