import 'package:circuit_record/ui/screen/car/car_list/car_list_screen_viewmodel.dart';
import 'package:circuit_record/ui/screen/car/car_list/widget/car_item/car_item.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:circuit_record/ui/util/ListItemAddButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CarListScreen extends HookConsumerWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(carListScreenViewModelProvider.notifier);
    final state = ref.watch(carListScreenViewModelProvider);

    useEffect(() {
      viewModel.getCars();
      return;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text("車両")),
      body: Column(
        children: [
          SizedBox(height: Style.spacing.medium),
          Visibility(
            visible: state.isVisibleEmpty,
            child: const Text("車両が登録されていません。"),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => CarItem(car: state.cars[index]),
            itemCount: state.cars.length,
          ),
          ListItemAddButton(
            onTap: () {
              viewModel.addCar();
            },
          ),
        ],
      ),
    );
  }
}
