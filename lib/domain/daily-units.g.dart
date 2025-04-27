// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily-units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyUnits _$DailyUnitsFromJson(Map<String, dynamic> json) => _DailyUnits(
      time: json['time'] as String,
      temperature2MMax: json['temperature_2m_max'] as String,
      temperature2MMin: json['temperature_2m_min'] as String,
      precipitationProbabilityMax:
          json['precipitation_probability_max'] as String,
      uvIndexClearSkyMax: json['uv_index_clear_sky_max'] as String,
      cloudCoverMean: json['cloud_cover_mean'] as String,
    );

Map<String, dynamic> _$DailyUnitsToJson(_DailyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'uv_index_clear_sky_max': instance.uvIndexClearSkyMax,
      'cloud_cover_mean': instance.cloudCoverMean,
    };
