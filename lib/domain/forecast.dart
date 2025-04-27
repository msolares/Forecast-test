import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'currents-units.dart';
import 'daily-units.dart';
import 'daily.dart';
import 'hourly-units.dart';
import 'hourly.dart';
part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
abstract class Forecast with _$Forecast{
  const factory Forecast({
    required double latitude,
    required double longitude,
    @JsonKey(name: 'generationtime_ms') required double generationtimeMs,
    @JsonKey(name: 'utc_offset_seconds') required int utcOffsetSeconds,
    required String timezone,
    @JsonKey(name: 'timezone_abbreviation') required String timezoneAbbreviation,
    required int elevation,
    @JsonKey(name: 'current_units') required CurrentUnits currentUnits,
    required Current current,
    @JsonKey(name: 'hourly_units') required HourlyUnits hourlyUnits,
    required Hourly hourly,
    @JsonKey(name: 'daily_units') required DailyUnits dailyUnits,
    required Daily daily,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);
}