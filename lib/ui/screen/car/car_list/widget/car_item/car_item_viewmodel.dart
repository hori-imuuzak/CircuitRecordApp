import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final carItemViewModelProvider =
    StateNotifierProvider.family<CarItemViewModel, Car, Car>(
  (ref, car) => CarItemViewModel(car),
);

class CarItemViewModel extends ViewModel<Car> {
  final Car car;

  CarItemViewModel(this.car) : super(car);

  String get textId => "No. ${car.id}";

  String get name => car.name.isEmpty ? "（未入力）" : car.name;

  Color get nameColor => car.name.isEmpty ? Style.gray.caption : Colors.black;

  String get memo => car.memo.isEmpty ? "（未入力）" : car.memo;

  Color get memoColor => car.memo.isEmpty ? Style.gray.caption : Colors.black;
}
