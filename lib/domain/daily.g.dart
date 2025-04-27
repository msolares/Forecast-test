// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Daily _$DailyFromJson(Map<String, dynamic> json) => _Daily(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2MMax: (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      temperature2MMin: (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      precipitationProbabilityMax:
          (json['precipitation_probability_max'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      uvIndexClearSkyMax: (json['uv_index_clear_sky_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      cloudCoverMean: (json['cloud_cover_mean'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$DailyToJson(_Daily instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2MMax,
      'temperature_2m_min': instance.temperature2MMin,
      'precipitation_probability_max': instance.precipitationProbabilityMax,
      'uv_index_clear_sky_max': instance.uvIndexClearSkyMax,
      'cloud_cover_mean': instance.cloudCoverMean,
    };
