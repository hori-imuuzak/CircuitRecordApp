import 'package:circuit_record/ui/screen/car/car_list/widget/edit_car/edit_car_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route editCar() => _generateRoute(
        const EditCarScreen(),
        fullScreenDialog: true,
      );

  static Route _generateRoute(Widget widget, {bool fullScreenDialog = false}) {
    return MaterialPageRoute(
      builder: (context) => widget,
      fullscreenDialog: fullScreenDialog,
    );
  }
}
