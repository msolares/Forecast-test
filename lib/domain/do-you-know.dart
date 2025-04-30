import 'package:freezed_annotation/freezed_annotation.dart';
part 'do-you-know.freezed.dart';
part 'do-you-know.g.dart';

@freezed
abstract class DoYouKnow with _$DoYouKnow{
  const factory DoYouKnow({
    required String texto,
  }) = _DoYouKnow;

  factory DoYouKnow.fromJson(Map<String, dynamic> json) => _$DoYouKnowFromJson(json);
}