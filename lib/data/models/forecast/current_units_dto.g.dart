// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_units_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentUnits _$CurrentUnitsFromJson(Map<String, dynamic> json) =>
    _CurrentUnits(
      time: json['time'] as String,
      interval: json['interval'] as String,
      temperature2M: json['temperature_2m'] as String,
      rain: json['rain'] as String,
      windSpeed10M: json['wind_speed_10m'] as String,
      apparentTemperature: json['apparent_temperature'] as String,
      isDay: json['is_day'] as String,
      cloudCover: json['cloud_cover'] as String,
    );

Map<String, dynamic> _$CurrentUnitsToJson(_CurrentUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature2M,
      'rain': instance.rain,
      'wind_speed_10m': instance.windSpeed10M,
      'apparent_temperature': instance.apparentTemperature,
      'is_day': instance.isDay,
      'cloud_cover': instance.cloudCover,
    };
