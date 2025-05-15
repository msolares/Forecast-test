// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/forecast/current.dart';

part 'current_dto.freezed.dart';
part 'current_dto.g.dart';

@freezed
abstract class Current with _$Current {
  const factory Current({
    required String time,
    required int interval,
    @JsonKey(name: 'temperature_2m') required int temperature2M,
    required int rain,
    @JsonKey(name: 'wind_speed_10m') required double windSpeed10M,
    @JsonKey(name: 'apparent_temperature') required double apparentTemperature,
    @JsonKey(name: 'is_day') required int isDay,
    @JsonKey(name: 'cloud_cover') required int cloudCover,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  factory Current.fromDomain(CurrentMdl current) => Current(
    time: current.time,
    interval: current.interval,
    temperature2M: current.temperature2M,
    rain: current.rain,
    windSpeed10M: current.windSpeed10M,
    apparentTemperature: current.apparentTemperature,
    isDay: current.isDay,
    cloudCover: current.cloudCover,
  );
}

extension CurrentMapper on Current {
  CurrentMdl toDomain() => CurrentMdl(
    time,
    interval,
    temperature2M,
    rain,
    windSpeed10M,
    apparentTemperature,
    isDay,
    cloudCover,
  );
}
