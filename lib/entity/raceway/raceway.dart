import 'package:freezed_annotation/freezed_annotation.dart';

part 'raceway.freezed.dart';

@freezed
class Raceway with _$Raceway {
  const factory Raceway({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String postalCode,
    @Default("") String address,
    @Default("") String imagePath,
  }) = _Raceway;
}
