import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/forecast/daily.dart';

part 'daily_dto.freezed.dart';
part 'daily_dto.g.dart';

@freezed
abstract class Daily with _$Daily {
  const factory Daily({
    required List<String> time,
    @JsonKey(name: 'temperature_2m_max') required List<double> temperature2MMax,
    @JsonKey(name: 'temperature_2m_min') required List<double> temperature2MMin,
    @JsonKey(name: 'precipitation_probability_max') required List<int> precipitationProbabilityMax,
    @JsonKey(name: 'uv_index_clear_sky_max') required List<double> uvIndexClearSkyMax,
    @JsonKey(name: 'cloud_cover_mean') required List<int> cloudCoverMean,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  factory Daily.fromDomain(DailyMdl model) => Daily(
    time: model.time,
    temperature2MMax: model.temperature2MMax,
    temperature2MMin: model.temperature2MMin,
    precipitationProbabilityMax: model.precipitationProbabilityMax,
    uvIndexClearSkyMax: model.uvIndexClearSkyMax,
    cloudCoverMean: model.cloudCoverMean,
  );
}

extension DailyMapper on Daily {
  DailyMdl toDomain() => DailyMdl(
    time,
    temperature2MMax,
    temperature2MMin,
    precipitationProbabilityMax,
    uvIndexClearSkyMax,
    cloudCoverMean,
  );
}
