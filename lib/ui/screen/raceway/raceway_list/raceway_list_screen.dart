import 'package:circuit_record/ui/theme/style.dart';
import 'package:circuit_record/ui/util/list_item_add_button.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RacewayListScreen extends HookConsumerWidget {
  const RacewayListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("コース")),
      body: Column(
        children: [
          SizedBox(height: Style.spacing.medium),
          const Text("コースがありません。"),
          ListItemAddButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
