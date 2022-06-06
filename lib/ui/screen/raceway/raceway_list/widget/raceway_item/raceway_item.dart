import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/routes/routes.dart';
import 'package:circuit_record/ui/screen/raceway/raceway_list/widget/raceway_item/raceway_item_viewmodel.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RacewayItem extends HookConsumerWidget {
  final Raceway raceway;

  const RacewayItem({
    Key? key,
    required this.raceway,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(racewayItemViewModelProvider(raceway).notifier);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: Style.spacing.small),
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(Routes.editRaceway(raceway));
          },
          child: Padding(
            padding: EdgeInsets.all(Style.spacing.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(viewModel.textId),
                SizedBox(height: Style.spacing.small),
                Row(
                  children: [
                    Icon(
                      Icons.map,
                      color: Colors.black,
                      size: Style.iconSize.small,
                    ),
                    Text(
                      viewModel.name,
                      style: TextStyle(color: viewModel.nameColor),
                    ),
                  ],
                ),
                SizedBox(height: Style.spacing.small),
                const Text(
                  "天気予報（現在）",
                  style: TextStyle(fontSize: 12.0),
                ),
                Text(
                  viewModel.weather,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "攻略ポイント数",
                          style: TextStyle(fontSize: 12.0),
                        ),
                        Text(
                          viewModel.strategyPointCountText,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("攻略ポイントを編集する"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
