import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/forecast/forecast.dart';
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
    currentUnits: CurrentUnits.fromDomain(model.currentUnits),
    current: Current.fromDomain(model.current),
    hourlyUnits: HourlyUnits.fromDomain(model.hourlyUnits),
    hourly: Hourly.fromDomain(model.hourly),
    dailyUnits: DailyUnits.fromDomain(model.dailyUnits),
    daily: Daily.fromDomain(model.daily),
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
    currentUnits.toDomain(),
    current.toDomain(),
    hourlyUnits.toDomain(),
    hourly.toDomain(),
    dailyUnits.toDomain(),
    daily.toDomain(),
  );
}
