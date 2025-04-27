import 'package:freezed_annotation/freezed_annotation.dart';

part 'currents-units.freezed.dart';
part 'currents-units.g.dart';

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

}
