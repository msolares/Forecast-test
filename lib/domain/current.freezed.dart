// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Current {
  String get time;
  int get interval;
  @JsonKey(name: 'temperature_2m')
  int get temperature2M;
  int get rain;
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed10M;
  @JsonKey(name: 'apparent_temperature')
  double get apparentTemperature;
  @JsonKey(name: 'is_day')
  int get isDay;
  @JsonKey(name: 'cloud_cover')
  int get cloudCover;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrentCopyWith<Current> get copyWith =>
      _$CurrentCopyWithImpl<Current>(this as Current, _$identity);

  /// Serializes this Current to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Current &&
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
    return 'Current(time: $time, interval: $interval, temperature2M: $temperature2M, rain: $rain, windSpeed10M: $windSpeed10M, apparentTemperature: $apparentTemperature, isDay: $isDay, cloudCover: $cloudCover)';
  }
}

/// @nodoc
abstract mixin class $CurrentCopyWith<$Res> {
  factory $CurrentCopyWith(Current value, $Res Function(Current) _then) =
      _$CurrentCopyWithImpl;
  @useResult
  $Res call(
      {String time,
      int interval,
      @JsonKey(name: 'temperature_2m') int temperature2M,
      int rain,
      @JsonKey(name: 'wind_speed_10m') double windSpeed10M,
      @JsonKey(name: 'apparent_temperature') double apparentTemperature,
      @JsonKey(name: 'is_day') int isDay,
      @JsonKey(name: 'cloud_cover') int cloudCover});
}

/// @nodoc
class _$CurrentCopyWithImpl<$Res> implements $CurrentCopyWith<$Res> {
  _$CurrentCopyWithImpl(this._self, this._then);

  final Current _self;
  final $Res Function(Current) _then;

  /// Create a copy of Current
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
              as int,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as int,
      rain: null == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed10M: null == windSpeed10M
          ? _self.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as double,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _self.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      cloudCover: null == cloudCover
          ? _self.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Current implements Current {
  const _Current(
      {required this.time,
      required this.interval,
      @JsonKey(name: 'temperature_2m') required this.temperature2M,
      required this.rain,
      @JsonKey(name: 'wind_speed_10m') required this.windSpeed10M,
      @JsonKey(name: 'apparent_temperature') required this.apparentTemperature,
      @JsonKey(name: 'is_day') required this.isDay,
      @JsonKey(name: 'cloud_cover') required this.cloudCover});
  factory _Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  @override
  final String time;
  @override
  final int interval;
  @override
  @JsonKey(name: 'temperature_2m')
  final int temperature2M;
  @override
  final int rain;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final double windSpeed10M;
  @override
  @JsonKey(name: 'apparent_temperature')
  final double apparentTemperature;
  @override
  @JsonKey(name: 'is_day')
  final int isDay;
  @override
  @JsonKey(name: 'cloud_cover')
  final int cloudCover;

  /// Create a copy of Current
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrentCopyWith<_Current> get copyWith =>
      __$CurrentCopyWithImpl<_Current>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Current &&
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
    return 'Current(time: $time, interval: $interval, temperature2M: $temperature2M, rain: $rain, windSpeed10M: $windSpeed10M, apparentTemperature: $apparentTemperature, isDay: $isDay, cloudCover: $cloudCover)';
  }
}

/// @nodoc
abstract mixin class _$CurrentCopyWith<$Res> implements $CurrentCopyWith<$Res> {
  factory _$CurrentCopyWith(_Current value, $Res Function(_Current) _then) =
      __$CurrentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String time,
      int interval,
      @JsonKey(name: 'temperature_2m') int temperature2M,
      int rain,
      @JsonKey(name: 'wind_speed_10m') double windSpeed10M,
      @JsonKey(name: 'apparent_temperature') double apparentTemperature,
      @JsonKey(name: 'is_day') int isDay,
      @JsonKey(name: 'cloud_cover') int cloudCover});
}

/// @nodoc
class __$CurrentCopyWithImpl<$Res> implements _$CurrentCopyWith<$Res> {
  __$CurrentCopyWithImpl(this._self, this._then);

  final _Current _self;
  final $Res Function(_Current) _then;

  /// Create a copy of Current
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
    return _then(_Current(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as int,
      rain: null == rain
          ? _self.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed10M: null == windSpeed10M
          ? _self.windSpeed10M
          : windSpeed10M // ignore: cast_nullable_to_non_nullable
              as double,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _self.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      cloudCover: null == cloudCover
          ? _self.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
