import 'package:circuit_record/entity/car/car.dart';
import 'package:circuit_record/routes/routes.dart';
import 'package:circuit_record/ui/screen/car/car_list/car_list_screen_viewmodel.dart';
import 'package:circuit_record/ui/screen/car/car_list/widget/car_item/car_item_viewmodel.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CarItem extends HookConsumerWidget {
  final Car car;

  const CarItem({
    Key? key,
    required this.car,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(carItemViewModelProvider(car).notifier);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: Style.spacing.small),
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(Routes.editCar(car));
          },
          child: Padding(
            padding: EdgeInsets.all(Style.spacing.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(viewModel.textId),
                Row(
                  children: [
                    Icon(
                      Icons.car_repair,
                      color: Colors.black,
                      size: Style.iconSize.small,
                    ),
                    Text(
                      viewModel.name,
                      style: TextStyle(color: viewModel.nameColor),
                    ),
                  ],
                ),
                const Text(
                  "メモ",
                  style: TextStyle(fontSize: 12.0),
                ),
                Text(
                  viewModel.memo,
                  style: TextStyle(color: viewModel.nameColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
