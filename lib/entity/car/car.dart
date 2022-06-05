import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

@freezed
class Car with _$Car {
  const factory Car({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String memo,
  }) = _Car;
}
