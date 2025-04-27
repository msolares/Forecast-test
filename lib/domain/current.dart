// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'current.freezed.dart';
part 'current.g.dart';

@freezed
abstract class Current with _$Current{
  const factory Current({
    required String time,
    required int interval,
    @JsonKey(name: 'temperature_2m') required int temperature2M,
    required int rain,
    @JsonKey(name: 'wind_speed_10m') required double windSpeed10M,
    @JsonKey(name: 'apparent_temperature')required double apparentTemperature,
    @JsonKey(name: 'is_day')required int isDay,
    @JsonKey(name: 'cloud_cover') required int cloudCover,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}