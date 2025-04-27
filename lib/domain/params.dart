import 'package:freezed_annotation/freezed_annotation.dart';
part 'params.freezed.dart';
part 'params.g.dart';

@freezed
abstract class Params with _$Params{
  const factory Params({
    required double lat,
    required double long,
  }) = _Params;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);
}