// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly-units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HourlyUnits {
  String get time;
  @JsonKey(name: 'temperature_2m')
  String get temperature2M;
  @JsonKey(name: 'precipitation_probability')
  String get precipitationProbability;
  @JsonKey(name: 'apparent_temperature')
  String get apparentTemperature;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HourlyUnitsCopyWith<HourlyUnits> get copyWith =>
      _$HourlyUnitsCopyWithImpl<HourlyUnits>(this as HourlyUnits, _$identity);

  /// Serializes this HourlyUnits to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HourlyUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature2M,
      precipitationProbability, apparentTemperature);

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2M: $temperature2M, precipitationProbability: $precipitationProbability, apparentTemperature: $apparentTemperature)';
  }
}

/// @nodoc
abstract mixin class $HourlyUnitsCopyWith<$Res> {
  factory $HourlyUnitsCopyWith(
          HourlyUnits value, $Res Function(HourlyUnits) _then) =
      _$HourlyUnitsCopyWithImpl;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      @JsonKey(name: 'precipitation_probability')
      String precipitationProbability,
      @JsonKey(name: 'apparent_temperature') String apparentTemperature});
}

/// @nodoc
class _$HourlyUnitsCopyWithImpl<$Res> implements $HourlyUnitsCopyWith<$Res> {
  _$HourlyUnitsCopyWithImpl(this._self, this._then);

  final HourlyUnits _self;
  final $Res Function(HourlyUnits) _then;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? precipitationProbability = null,
    Object? apparentTemperature = null,
  }) {
    return _then(_self.copyWith(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbability: null == precipitationProbability
          ? _self.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as String,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HourlyUnits implements HourlyUnits {
  const _HourlyUnits(
      {required this.time,
      @JsonKey(name: 'temperature_2m') required this.temperature2M,
      @JsonKey(name: 'precipitation_probability')
      required this.precipitationProbability,
      @JsonKey(name: 'apparent_temperature')
      required this.apparentTemperature});
  factory _HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final String temperature2M;
  @override
  @JsonKey(name: 'precipitation_probability')
  final String precipitationProbability;
  @override
  @JsonKey(name: 'apparent_temperature')
  final String apparentTemperature;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HourlyUnitsCopyWith<_HourlyUnits> get copyWith =>
      __$HourlyUnitsCopyWithImpl<_HourlyUnits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HourlyUnitsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HourlyUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2M, temperature2M) ||
                other.temperature2M == temperature2M) &&
            (identical(
                    other.precipitationProbability, precipitationProbability) ||
                other.precipitationProbability == precipitationProbability) &&
            (identical(other.apparentTemperature, apparentTemperature) ||
                other.apparentTemperature == apparentTemperature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature2M,
      precipitationProbability, apparentTemperature);

  @override
  String toString() {
    return 'HourlyUnits(time: $time, temperature2M: $temperature2M, precipitationProbability: $precipitationProbability, apparentTemperature: $apparentTemperature)';
  }
}

/// @nodoc
abstract mixin class _$HourlyUnitsCopyWith<$Res>
    implements $HourlyUnitsCopyWith<$Res> {
  factory _$HourlyUnitsCopyWith(
          _HourlyUnits value, $Res Function(_HourlyUnits) _then) =
      __$HourlyUnitsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') String temperature2M,
      @JsonKey(name: 'precipitation_probability')
      String precipitationProbability,
      @JsonKey(name: 'apparent_temperature') String apparentTemperature});
}

/// @nodoc
class __$HourlyUnitsCopyWithImpl<$Res> implements _$HourlyUnitsCopyWith<$Res> {
  __$HourlyUnitsCopyWithImpl(this._self, this._then);

  final _HourlyUnits _self;
  final $Res Function(_HourlyUnits) _then;

  /// Create a copy of HourlyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? precipitationProbability = null,
    Object? apparentTemperature = null,
  }) {
    return _then(_HourlyUnits(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbability: null == precipitationProbability
          ? _self.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as String,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
