import 'package:freezed_annotation/freezed_annotation.dart';
part 'hourly-units.freezed.dart';
part 'hourly-units.g.dart';

@freezed
abstract class HourlyUnits with _$HourlyUnits{
  const factory HourlyUnits({
    required String time,
    @JsonKey(name: 'temperature_2m') required String temperature2M,
    @JsonKey(name: 'precipitation_probability') required String precipitationProbability,
    @JsonKey(name: 'apparent_temperature') required String apparentTemperature,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => _$HourlyUnitsFromJson(json);
}