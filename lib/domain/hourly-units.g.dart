// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly-units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => _HourlyUnits(
      time: json['time'] as String,
      temperature2M: json['temperature_2m'] as String,
      precipitationProbability: json['precipitation_probability'] as String,
      apparentTemperature: json['apparent_temperature'] as String,
    );

Map<String, dynamic> _$HourlyUnitsToJson(_HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'precipitation_probability': instance.precipitationProbability,
      'apparent_temperature': instance.apparentTemperature,
    };
