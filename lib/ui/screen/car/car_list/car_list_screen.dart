import 'package:circuit_record/ui/theme/style.dart';
import 'package:circuit_record/ui/util/ListItemAddButton.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CarListScreen extends HookConsumerWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("車両")),
      body: Column(
        children: [
          SizedBox(height: Style.spacing.medium),
          const Text("車両が登録されていません。"),
          ListItemAddButton(),
        ],
      ),
    );
  }
}
