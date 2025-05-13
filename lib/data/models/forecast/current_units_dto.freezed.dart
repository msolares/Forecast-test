// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_units_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentUnits {
  String get time;
  String get interval;
  @JsonKey(name: 'temperature_2m')
  String get temperature2M;
  String get rain;
  @JsonKey(name: 'wind_speed_10m')
  String get windSpeed10M;
  @JsonKey(name: 'apparent_temperature')
  String get apparentTemperature;
  @JsonKey(name: 'is_day')
  String get isDay;
  @JsonKey(name: 'cloud_cover')
  String get cloudCover;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentUnitsCopyWith<CurrentUnits> get copyWith =>
      _$CurrentUnitsCopyWithImpl<CurrentUnits>(
          this as CurrentUnits, _$identity);

  /// Serializes this CurrentUnits to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrentUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.cloudCover, cloudCover) ||
                other.cloudCover == cloudCover));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, interval, temperature2M,
      rain, windSpeed10M, apparentTemperature, isDay, cloudCover);

  @override
  String toString() {
    return 'CurrentUnits(time: $time, interval: $interval, temperature2M: $temperature2M, rain: $rain, windSpeed10M: $windSpeed10M, apparentTemperature: $apparentTemperature, isDay: $isDay, cloudCover: $cloudCover)';
  }
}

/// @nodoc
abstract mixin class $CurrentUnitsCopyWith<$Res> {
  factory $CurrentUnitsCopyWith(
          CurrentUnits value, $Res Function(CurrentUnits) _then) =
      _$CurrentUnitsCopyWithImpl;
  @useResult
  $Res call(
      {String time,
      String interval,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      String rain,
      @JsonKey(name: 'wind_speed_10m') String windSpeed10M,
      @JsonKey(name: 'apparent_temperature') String apparentTemperature,
      @JsonKey(name: 'is_day') String isDay,
      @JsonKey(name: 'cloud_cover') String cloudCover});
}

/// @nodoc
class _$CurrentUnitsCopyWithImpl<$Res> implements $CurrentUnitsCopyWith<$Res> {
  _$CurrentUnitsCopyWithImpl(this._self, this._then);

  final CurrentUnits _self;
  final $Res Function(CurrentUnits) _then;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? interval = null,
    Object? temperature2M = null,
    Object? rain = null,
    Object? windSpeed10M = null,
    Object? apparentTemperature = null,
    Object? isDay = null,
    Object? cloudCover = null,
  }) {
    return _then(_self.copyWith(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      rain: null == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed10M: null == windSpeed10M
          ? _self.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as String,
      isDay: null == isDay
          ? _self.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String,
      cloudCover: null == cloudCover
          ? _self.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CurrentUnits implements CurrentUnits {
  const _CurrentUnits(
      {required this.time,
      required this.interval,
      @JsonKey(name: 'temperature_2m') required this.temperature2M,
      required this.rain,
      @JsonKey(name: 'wind_speed_10m') required this.windSpeed10M,
      @JsonKey(name: 'apparent_temperature') required this.apparentTemperature,
      @JsonKey(name: 'is_day') required this.isDay,
      @JsonKey(name: 'cloud_cover') required this.cloudCover});
  factory _CurrentUnits.fromJson(Map<String, dynamic> json) =>
      _$CurrentUnitsFromJson(json);

  @override
  final String time;
  @override
  final String interval;
  @override
  @JsonKey(name: 'temperature_2m')
  final String temperature2M;
  @override
  final String rain;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final String windSpeed10M;
  @override
  @JsonKey(name: 'apparent_temperature')
  final String apparentTemperature;
  @override
  @JsonKey(name: 'is_day')
  final String isDay;
  @override
  @JsonKey(name: 'cloud_cover')
  final String cloudCover;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentUnitsCopyWith<_CurrentUnits> get copyWith =>
      __$CurrentUnitsCopyWithImpl<_CurrentUnits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentUnitsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.windSpeed10M, windSpeed10M) ||
                other.windSpeed10M == windSpeed10M) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.cloudCover, cloudCover) ||
                other.cloudCover == cloudCover));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, interval, temperature2M,
      rain, windSpeed10M, apparentTemperature, isDay, cloudCover);

  @override
  String toString() {
    return 'CurrentUnits(time: $time, interval: $interval, temperature2M: $temperature2M, rain: $rain, windSpeed10M: $windSpeed10M, apparentTemperature: $apparentTemperature, isDay: $isDay, cloudCover: $cloudCover)';
  }
}

/// @nodoc
abstract mixin class _$CurrentUnitsCopyWith<$Res>
    implements $CurrentUnitsCopyWith<$Res> {
  factory _$CurrentUnitsCopyWith(
          _CurrentUnits value, $Res Function(_CurrentUnits) _then) =
      __$CurrentUnitsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String time,
      String interval,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      String rain,
      @JsonKey(name: 'wind_speed_10m') String windSpeed10M,
      @JsonKey(name: 'apparent_temperature') String apparentTemperature,
      @JsonKey(name: 'is_day') String isDay,
      @JsonKey(name: 'cloud_cover') String cloudCover});
}

/// @nodoc
class __$CurrentUnitsCopyWithImpl<$Res>
    implements _$CurrentUnitsCopyWith<$Res> {
  __$CurrentUnitsCopyWithImpl(this._self, this._then);

  final _CurrentUnits _self;
  final $Res Function(_CurrentUnits) _then;

  /// Create a copy of CurrentUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
    Object? interval = null,
    Object? temperature2M = null,
    Object? rain = null,
    Object? windSpeed10M = null,
    Object? apparentTemperature = null,
    Object? isDay = null,
    Object? cloudCover = null,
  }) {
    return _then(_CurrentUnits(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      rain: null == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as String,
      windSpeed10M: null == windSpeed10M
          ? _self.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as String,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as String,
      isDay: null == isDay
          ? _self.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as String,
      cloudCover: null == cloudCover
          ? _self.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
