import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/forecast/hourly-units.dart';

part 'hourly_units_dto.freezed.dart';
part 'hourly_units_dto.g.dart';

@freezed
abstract class HourlyUnits with _$HourlyUnits {
  const factory HourlyUnits({
    required String time,
    @JsonKey(name: 'temperature_2m') required String temperature2M,
    @JsonKey(name: 'precipitation_probability') required String precipitationProbability,
    @JsonKey(name: 'apparent_temperature') required String apparentTemperature,
    @JsonKey(name: 'cloud_cover') required String cloudCover,
  }) = _HourlyUnits;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => _$HourlyUnitsFromJson(json);

  factory HourlyUnits.fromDomain(HourlyUnitsMdl model) => HourlyUnits(
    time: model.time,
    temperature2M: model.temperature2M,
    precipitationProbability: model.precipitationProbability,
    apparentTemperature: model.apparentTemperature,
    cloudCover: model.cloudCover,
  );
}

extension HourlyUnitsMapper on HourlyUnits {
  HourlyUnitsMdl toDomain() => HourlyUnitsMdl(
    time,
    temperature2M,
    precipitationProbability,
    apparentTemperature,
    cloudCover,
  );
}
