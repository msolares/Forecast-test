import 'package:freezed_annotation/freezed_annotation.dart';
part 'daily-units.freezed.dart';
part 'daily-units.g.dart';

@freezed
abstract class DailyUnits with _$DailyUnits{
  const factory DailyUnits({
    required String time,
    @JsonKey(name: 'temperature_2m_max') required String temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') required String temperature2MMin,
    @JsonKey(name: 'precipitation_probability_max') required String precipitationProbabilityMax,
    @JsonKey(name: 'uv_index_clear_sky_max') required String uvIndexClearSkyMax,
    @JsonKey(name: 'cloud_cover_mean') required String cloudCoverMean,
  }) = _DailyUnits;

  factory DailyUnits.fromJson(Map<String, dynamic> json) => _$DailyUnitsFromJson(json);
}