import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/forecast/do-you-know.dart';


part 'do_you_know_dto.freezed.dart';
part 'do_you_know_dto.g.dart';

@freezed
abstract class  DoYouKnow with _$DoYouKnow {
  const factory DoYouKnow({
    required String texto,
  }) = _DoYouKnow;

  factory DoYouKnow.fromJson(Map<String, dynamic> json) => _$DoYouKnowFromJson(json);

  factory DoYouKnow.fromDomain(DoYouKnowMdl model) => DoYouKnow(
    texto: model.texto,
  );
}

extension DoYouKnowMapper on DoYouKnow {
  DoYouKnowMdl toDomain() => DoYouKnowMdl(
    texto,
  );
}
