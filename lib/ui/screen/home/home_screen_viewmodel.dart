import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/ui/screen/home/home_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeScreenViewModelProvider =
    StateNotifierProvider<HomeScreenViewModel, HomeState>(
  (ref) => HomeScreenViewModel(),
);

class HomeScreenViewModel extends ViewModel<HomeState> {
  HomeScreenViewModel() : super(const HomeState());

  void onTapTab(int index) {
    state = state.copyWith(tabIndex: index);
  }
}
