// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Hourly _$HourlyFromJson(Map<String, dynamic> json) => _Hourly(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature2M: (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      apparentTemperature: (json['apparent_temperature'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$HourlyToJson(_Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'precipitation_probability': instance.precipitationProbability,
      'apparent_temperature': instance.apparentTemperature,
    };
