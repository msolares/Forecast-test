// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Forecast {
  double get latitude;
  double get longitude;
  @JsonKey(name: 'generationtime_ms')
  double get generationtimeMs;
  @JsonKey(name: 'utc_offset_seconds')
  int get utcOffsetSeconds;
  String get timezone;
  @JsonKey(name: 'timezone_abbreviation')
  String get timezoneAbbreviation;
  int get elevation;
  @JsonKey(name: 'current_units')
  CurrentUnits get currentUnits;
  Current get current;
  @JsonKey(name: 'hourly_units')
  HourlyUnits get hourlyUnits;
  Hourly get hourly;
  @JsonKey(name: 'daily_units')
  DailyUnits get dailyUnits;
  Daily get daily;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<Forecast> get copyWith =>
      _$ForecastCopyWithImpl<Forecast>(this as Forecast, _$identity);

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Forecast &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentUnits,
      current,
      hourlyUnits,
      hourly,
      dailyUnits,
      daily);

  @override
  String toString() {
    return 'Forecast(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentUnits: $currentUnits, current: $current, hourlyUnits: $hourlyUnits, hourly: $hourly, dailyUnits: $dailyUnits, daily: $daily)';
  }
}

/// @nodoc
abstract mixin class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) _then) =
      _$ForecastCopyWithImpl;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      int elevation,
      @JsonKey(name: 'current_units') CurrentUnits currentUnits,
      Current current,
      @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
      Hourly hourly,
      @JsonKey(name: 'daily_units') DailyUnits dailyUnits,
      Daily daily});

  $CurrentUnitsCopyWith<$Res> get currentUnits;
  $CurrentCopyWith<$Res> get current;
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  $HourlyCopyWith<$Res> get hourly;
  $DailyUnitsCopyWith<$Res> get dailyUnits;
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res> implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._self, this._then);

  final Forecast _self;
  final $Res Function(Forecast) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentUnits = null,
    Object? current = null,
    Object? hourlyUnits = null,
    Object? hourly = null,
    Object? dailyUnits = null,
    Object? daily = null,
  }) {
    return _then(_self.copyWith(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _self.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _self.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _self.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int,
      currentUnits: null == currentUnits
          ? _self.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits,
      current: null == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      hourlyUnits: null == hourlyUnits
          ? _self.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits,
      hourly: null == hourly
          ? _self.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
      dailyUnits: null == dailyUnits
          ? _self.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits,
      daily: null == daily
          ? _self.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ));
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res> get currentUnits {
    return $CurrentUnitsCopyWith<$Res>(_self.currentUnits, (value) {
      return _then(_self.copyWith(currentUnits: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_self.current, (value) {
      return _then(_self.copyWith(current: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res> get hourlyUnits {
    return $HourlyUnitsCopyWith<$Res>(_self.hourlyUnits, (value) {
      return _then(_self.copyWith(hourlyUnits: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res> get hourly {
    return $HourlyCopyWith<$Res>(_self.hourly, (value) {
      return _then(_self.copyWith(hourly: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res> get dailyUnits {
    return $DailyUnitsCopyWith<$Res>(_self.dailyUnits, (value) {
      return _then(_self.copyWith(dailyUnits: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res> get daily {
    return $DailyCopyWith<$Res>(_self.daily, (value) {
      return _then(_self.copyWith(daily: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Forecast implements Forecast {
  const _Forecast(
      {required this.latitude,
      required this.longitude,
      @JsonKey(name: 'generationtime_ms') required this.generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') required this.utcOffsetSeconds,
      required this.timezone,
      @JsonKey(name: 'timezone_abbreviation')
      required this.timezoneAbbreviation,
      required this.elevation,
      @JsonKey(name: 'current_units') required this.currentUnits,
      required this.current,
      @JsonKey(name: 'hourly_units') required this.hourlyUnits,
      required this.hourly,
      @JsonKey(name: 'daily_units') required this.dailyUnits,
      required this.daily});
  factory _Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey(name: 'generationtime_ms')
  final double generationtimeMs;
  @override
  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;
  @override
  final String timezone;
  @override
  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;
  @override
  final int elevation;
  @override
  @JsonKey(name: 'current_units')
  final CurrentUnits currentUnits;
  @override
  final Current current;
  @override
  @JsonKey(name: 'hourly_units')
  final HourlyUnits hourlyUnits;
  @override
  final Hourly hourly;
  @override
  @JsonKey(name: 'daily_units')
  final DailyUnits dailyUnits;
  @override
  final Daily daily;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForecastCopyWith<_Forecast> get copyWith =>
      __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForecastToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Forecast &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.generationtimeMs, generationtimeMs) ||
                other.generationtimeMs == generationtimeMs) &&
            (identical(other.utcOffsetSeconds, utcOffsetSeconds) ||
                other.utcOffsetSeconds == utcOffsetSeconds) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneAbbreviation, timezoneAbbreviation) ||
                other.timezoneAbbreviation == timezoneAbbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.currentUnits, currentUnits) ||
                other.currentUnits == currentUnits) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.hourlyUnits, hourlyUnits) ||
                other.hourlyUnits == hourlyUnits) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.dailyUnits, dailyUnits) ||
                other.dailyUnits == dailyUnits) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      generationtimeMs,
      utcOffsetSeconds,
      timezone,
      timezoneAbbreviation,
      elevation,
      currentUnits,
      current,
      hourlyUnits,
      hourly,
      dailyUnits,
      daily);

  @override
  String toString() {
    return 'Forecast(latitude: $latitude, longitude: $longitude, generationtimeMs: $generationtimeMs, utcOffsetSeconds: $utcOffsetSeconds, timezone: $timezone, timezoneAbbreviation: $timezoneAbbreviation, elevation: $elevation, currentUnits: $currentUnits, current: $current, hourlyUnits: $hourlyUnits, hourly: $hourly, dailyUnits: $dailyUnits, daily: $daily)';
  }
}

/// @nodoc
abstract mixin class _$ForecastCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) _then) =
      __$ForecastCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      @JsonKey(name: 'generationtime_ms') double generationtimeMs,
      @JsonKey(name: 'utc_offset_seconds') int utcOffsetSeconds,
      String timezone,
      @JsonKey(name: 'timezone_abbreviation') String timezoneAbbreviation,
      int elevation,
      @JsonKey(name: 'current_units') CurrentUnits currentUnits,
      Current current,
      @JsonKey(name: 'hourly_units') HourlyUnits hourlyUnits,
      Hourly hourly,
      @JsonKey(name: 'daily_units') DailyUnits dailyUnits,
      Daily daily});

  @override
  $CurrentUnitsCopyWith<$Res> get currentUnits;
  @override
  $CurrentCopyWith<$Res> get current;
  @override
  $HourlyUnitsCopyWith<$Res> get hourlyUnits;
  @override
  $HourlyCopyWith<$Res> get hourly;
  @override
  $DailyUnitsCopyWith<$Res> get dailyUnits;
  @override
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class __$ForecastCopyWithImpl<$Res> implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(this._self, this._then);

  final _Forecast _self;
  final $Res Function(_Forecast) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? generationtimeMs = null,
    Object? utcOffsetSeconds = null,
    Object? timezone = null,
    Object? timezoneAbbreviation = null,
    Object? elevation = null,
    Object? currentUnits = null,
    Object? current = null,
    Object? hourlyUnits = null,
    Object? hourly = null,
    Object? dailyUnits = null,
    Object? daily = null,
  }) {
    return _then(_Forecast(
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      generationtimeMs: null == generationtimeMs
          ? _self.generationtimeMs
          : generationtimeMs // ignore: cast_nullable_to_non_nullable
              as double,
      utcOffsetSeconds: null == utcOffsetSeconds
          ? _self.utcOffsetSeconds
          : utcOffsetSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneAbbreviation: null == timezoneAbbreviation
          ? _self.timezoneAbbreviation
          : timezoneAbbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as int,
      currentUnits: null == currentUnits
          ? _self.currentUnits
          : currentUnits // ignore: cast_nullable_to_non_nullable
              as CurrentUnits,
      current: null == current
          ? _self.current
          : current // ignore: cast_nullable_to_non_nullable
              as Current,
      hourlyUnits: null == hourlyUnits
          ? _self.hourlyUnits
          : hourlyUnits // ignore: cast_nullable_to_non_nullable
              as HourlyUnits,
      hourly: null == hourly
          ? _self.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
      dailyUnits: null == dailyUnits
          ? _self.dailyUnits
          : dailyUnits // ignore: cast_nullable_to_non_nullable
              as DailyUnits,
      daily: null == daily
          ? _self.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ));
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<$Res> get currentUnits {
    return $CurrentUnitsCopyWith<$Res>(_self.currentUnits, (value) {
      return _then(_self.copyWith(currentUnits: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<$Res> get current {
    return $CurrentCopyWith<$Res>(_self.current, (value) {
      return _then(_self.copyWith(current: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<$Res> get hourlyUnits {
    return $HourlyUnitsCopyWith<$Res>(_self.hourlyUnits, (value) {
      return _then(_self.copyWith(hourlyUnits: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res> get hourly {
    return $HourlyCopyWith<$Res>(_self.hourly, (value) {
      return _then(_self.copyWith(hourly: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<$Res> get dailyUnits {
    return $DailyUnitsCopyWith<$Res>(_self.dailyUnits, (value) {
      return _then(_self.copyWith(dailyUnits: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res> get daily {
    return $DailyCopyWith<$Res>(_self.daily, (value) {
      return _then(_self.copyWith(daily: value));
    });
  }
}

// dart format on
