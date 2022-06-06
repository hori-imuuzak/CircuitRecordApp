import 'package:circuit_record/ui/screen/raceway/raceway_list/raceway_list_screen_viewmodel.dart';
import 'package:circuit_record/ui/screen/raceway/raceway_list/widget/raceway_item/raceway_item.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:circuit_record/ui/util/list_item_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RacewayListScreen extends HookConsumerWidget {
  const RacewayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(racewayListScreenViewModelProvider.notifier);
    final state = ref.watch(racewayListScreenViewModelProvider);

    useEffect(() {
      viewModel.getRaceways();
      return;
    }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text("コース")),
      body: Column(
        children: [
          SizedBox(height: Style.spacing.medium),
          Visibility(
            visible: state.isVisibleEmpty,
            child: const Text("コースがありません。"),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => RacewayItem(
              raceway: state.raceways[index],
            ),
            itemCount: state.raceways.length,
          ),
          ListItemAddButton(
            onTap: () {
              viewModel.addRaceway();
            },
          ),
        ],
      ),
    );
  }
}
