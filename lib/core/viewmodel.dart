import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewModel<T> extends StateNotifier<T> {
  ViewModel(T state) : super(state);
}
