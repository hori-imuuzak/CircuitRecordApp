import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/repository/car_repository.dart';
import 'package:circuit_record/repository/di/repository_provider.dart';
import 'package:circuit_record/ui/screen/car/car_list/car_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final carListScreenViewModelProvider =
    StateNotifierProvider<CarListScreenViewModel, CarListState>(
  (ref) => CarListScreenViewModel(
    ref.read(carRepositoryProvider),
  ),
);

class CarListScreenViewModel extends ViewModel<CarListState> {
  final CarRepository _carRepository;

  CarListScreenViewModel(this._carRepository) : super(const CarListState());

  Future<void> getCars() async {
    final cars = await _carRepository.findAll();
    state = state.copyWith(cars: cars);
  }

  Future<void> addCar() async {
    final car = await _carRepository.create(const Car());
    state = state.addCar(car);
  }

  Future<void> deleteCar(Car car) async {
    state = state.deleteCar(car);
  }

  Future<void> updateCar(Car car) async {
    state = state.updateCar(car);
  }
}
