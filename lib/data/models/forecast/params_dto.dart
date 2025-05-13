import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/forecast/params.dart';

part 'params_dto.freezed.dart';
part 'params_dto.g.dart';

@freezed
abstract class Params with _$Params {
  const factory Params({
    required double lat,
    required double long,
  }) = _Params;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);

  factory Params.fromDomain(ParamsMdl model) => Params(
    lat: model.lat,
    long: model.long,
  );
}

extension ParamsMapper on Params {
  ParamsMdl toDomain() => ParamsMdl(
    lat,
    long,
  );
}
