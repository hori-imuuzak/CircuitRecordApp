import 'package:circuit_record/ui/util/AppBarActionDeleteButton.dart';
import 'package:circuit_record/ui/util/AppBarCloseButton.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditCarScreen extends HookConsumerWidget {
  const EditCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("車両の編集"),
        actions: [AppBarActionDeleteButton(onPressed: () {})],
      ),
      body: const Center(
        child: Text("編集"),
      ),
    );
  }
}
