import 'package:circuit_record/core/viewmodel.dart';
import 'package:circuit_record/entity/raceway/raceway.dart';
import 'package:circuit_record/ui/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final racewayItemViewModelProvider =
    StateNotifierProvider.family<RacewayItemViewModel, Raceway, Raceway>(
  (ref, raceway) => RacewayItemViewModel(raceway),
);

class RacewayItemViewModel extends ViewModel<Raceway> {
  final Raceway raceway;

  RacewayItemViewModel(this.raceway) : super(raceway);

  String get textId => "No. ${raceway.id}";

  String get name => raceway.name.isEmpty ? "（未入力）" : raceway.name;

  Color get nameColor =>
      raceway.name.isEmpty ? Style.gray.caption : Colors.black;

  String get weather => "晴れ";

  String get strategyPointCountText => "0";
}
