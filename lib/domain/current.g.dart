// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Current _$CurrentFromJson(Map<String, dynamic> json) => _Current(
      time: json['time'] as String,
      interval: (json['interval'] as num).toInt(),
      temperature2M: (json['temperature_2m'] as num).toInt(),
      rain: (json['rain'] as num).toInt(),
      windSpeed10M: (json['wind_speed_10m'] as num).toDouble(),
      apparentTemperature: (json['apparent_temperature'] as num).toDouble(),
      isDay: (json['is_day'] as num).toInt(),
      cloudCover: (json['cloud_cover'] as num).toInt(),
    );

Map<String, dynamic> _$CurrentToJson(_Current instance) => <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2M,
      'rain': instance.rain,
      'wind_speed_10m': instance.windSpeed10M,
      'apparent_temperature': instance.apparentTemperature,
      'is_day': instance.isDay,
      'cloud_cover': instance.cloudCover,
    };
