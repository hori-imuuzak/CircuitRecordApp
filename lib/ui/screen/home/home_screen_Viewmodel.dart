import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/ui/screen/home/home_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeScreenViewModelProvider =
    StateNotifierProvider<HomeScreenViewModel, HomeScreenState>(
  (ref) => HomeScreenViewModel(),
);

class HomeScreenViewModel extends ViewModel<HomeScreenState> {
  HomeScreenViewModel() : super(const HomeScreenState());

  void onTapTab(int index) {
    state = state.copyWith(tabIndex: index);
  }
}
