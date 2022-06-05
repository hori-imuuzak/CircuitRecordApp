import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/ui/screen/car/car_list/car_list_screen_viewmodel.dart';
import 'package:circuit_record/ui/screen/car/car_list/widget/edit_car/edit_car_screen_viewmodel.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:circuit_record/ui/util/appbar/AppBarActionConfirmButton.dart';
import 'package:circuit_record/ui/util/appbar/AppBarActionDeleteButton.dart';
import 'package:circuit_record/ui/util/UnFocusScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditCarScreen extends HookConsumerWidget {
  final Car car;

  const EditCarScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(editCarScreenViewModelProvider(car).notifier);
    final carListScreenViewModel =
        ref.read(carListScreenViewModelProvider.notifier);

    final name = useTextEditingController(text: car.name);
    final memo = useTextEditingController(text: car.memo);

    return UnFocusScreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("車両の編集"),
          actions: [
            AppBarActionDeleteButton(onPressed: () async {
              if (await viewModel.deleteCar() == true) {
                Navigator.of(context).maybePop(car);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("削除しました。")),
                );
                carListScreenViewModel.deleteCar(car);
              }
            }),
            AppBarActionConfirmButton(onPressed: () {}),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(Style.spacing.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("名称", style: TextStyle(fontSize: 10.0)),
              TextFormField(controller: name, maxLength: 100),
              const Text("メモ", style: TextStyle(fontSize: 10.0)),
              TextFormField(controller: memo, maxLines: 10, maxLength: 1000),
            ],
          ),
        ),
      ),
    );
  }
}
