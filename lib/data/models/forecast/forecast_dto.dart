import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheathertest/domain/forecast/current.dart';
import 'package:wheathertest/domain/forecast/currents-units.dart';
import 'package:wheathertest/domain/forecast/daily-units.dart';
import 'package:wheathertest/domain/forecast/daily.dart';
import 'package:wheathertest/domain/forecast/hourly-units.dart';
import 'package:wheathertest/domain/forecast/hourly.dart';
import '../../../domain/forecast/forecast.dart';

import 'current_dto.dart';
import 'current_units_dto.dart';
import 'daily_dto.dart';
import 'daily_units_dto.dart';
import 'hourly_dto.dart';
import 'hourly_units_dto.dart';

part 'forecast_dto.freezed.dart';
part 'forecast_dto.g.dart';

@freezed
abstract class Forecast with _$Forecast {
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

  factory Forecast.fromDomain(ForecastMdl model) => Forecast(
    latitude: model.latitude,
    longitude: model.longitude,
    generationtimeMs: model.generationtimeMs,
    utcOffsetSeconds: model.utcOffsetSeconds,
    timezone: model.timezone,
    timezoneAbbreviation: model.timezoneAbbreviation,
    elevation: model.elevation,
    currentUnits: CurrentUnits.fromDomain(model.currentUnits as CurrentUnitsMdl),
    current: Current.fromDomain(model.current as CurrentMdl),
    hourlyUnits: HourlyUnits.fromDomain(model.hourlyUnits as HourlyUnitsMdl),
    hourly: Hourly.fromDomain(model.hourly as HourlyMdl),
    dailyUnits: DailyUnits.fromDomain(model.dailyUnits as DailyUnitsMdl),
    daily: Daily.fromDomain(model.daily as DailyMdl),
  );
}

extension ForecastMapper on Forecast {
  ForecastMdl toDomain() => ForecastMdl(
    latitude,
    longitude,
    generationtimeMs,
    utcOffsetSeconds,
    timezone,
    timezoneAbbreviation,
    elevation,
    currentUnits.toDomain() as CurrentUnits,
    current.toDomain() as Current,
    hourlyUnits.toDomain() as HourlyUnits,
    hourly.toDomain() as Hourly,
    dailyUnits.toDomain() as DailyUnits,
    daily.toDomain() as Daily,
  );
}
