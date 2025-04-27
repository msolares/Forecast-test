import 'package:freezed_annotation/freezed_annotation.dart';
part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
abstract class Daily with _$Daily{
  const factory Daily({
    required List<String> time,
    @JsonKey(name: 'temperature_2m_max') required List<double> temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') required List<double> temperature2MMin,
    @JsonKey(name: 'precipitation_probability_max') required List<int> precipitationProbabilityMax,
    @JsonKey(name: 'uv_index_clear_sky_max') required List<double> uvIndexClearSkyMax,
    @JsonKey(name: 'cloud_cover_mean') required List<int> cloudCoverMean,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}