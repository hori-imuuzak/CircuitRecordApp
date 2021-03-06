import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/ui/screen/car/edit_car/edit_car_screen.dart';
import 'package:circuit_record/ui/screen/raceway/edit_raceway/edit_raceway_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route editCar(Car car) => _generateRoute(
        EditCarScreen(car: car),
        fullScreenDialog: true,
      );

  static Route editRaceway(Raceway raceway) => _generateRoute(
        EditRacewayScreen(raceway: raceway),
        fullScreenDialog: true,
      );

  static Route _generateRoute(Widget widget, {bool fullScreenDialog = false}) {
    return MaterialPageRoute(
      builder: (context) => widget,
      fullscreenDialog: fullScreenDialog,
    );
  }
}
