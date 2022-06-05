import 'package:circuit_record/ui/screen/home/home_screen_Viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(homeScreenViewModelProvider.notifier);
    final state = ref.watch(homeScreenViewModelProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: state.tabIndex,
        onTap: (index) {
          viewModel.onTapTab(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "スケジュール",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add),
            label: "レポート",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "つぶやき",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: "車両",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "コース",
          ),
        ],
      ),
    );
  }
}
