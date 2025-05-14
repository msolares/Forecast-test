import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/forecast/currents-units.dart';


part 'current_units_dto.freezed.dart';
part 'current_units_dto.g.dart';

@freezed
abstract class CurrentUnits with _$CurrentUnits {
  const factory CurrentUnits({
    required String time,
    required String interval,
    @JsonKey(name: 'temperature_2m') required String temperature2M,
    required String rain,
    @JsonKey(name: 'wind_speed_10m') required String windSpeed10M,
    @JsonKey(name: 'apparent_temperature') required String apparentTemperature,
    @JsonKey(name: 'is_day') required String isDay,
    @JsonKey(name: 'cloud_cover') required String cloudCover,
  }) = _CurrentUnits;

  factory CurrentUnits.fromJson(Map<String, dynamic> json) => _$CurrentUnitsFromJson(json);

  factory CurrentUnits.fromDomain(CurrentUnitsMdl model) => CurrentUnits(
    time: model.time,
    interval: model.interval,
    temperature2M: model.temperature2M,
    rain: model.rain,
    windSpeed10M: model.windSpeed10M,
    apparentTemperature: model.apparentTemperature,
    isDay: model.isDay,
    cloudCover: model.cloudCover,
  );
}

extension CurrentUnitsMapper on CurrentUnits {
  CurrentUnitsMdl toDomain() => CurrentUnitsMdl(
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
