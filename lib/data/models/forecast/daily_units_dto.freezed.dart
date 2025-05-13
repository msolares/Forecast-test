// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_units_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyUnits {
  String get time;
  @JsonKey(name: 'temperature_2m_max')
  String get temperature2MMax;
  @JsonKey(name: 'temperature_2m_min')
  String get temperature2MMin;
  @JsonKey(name: 'precipitation_probability_max')
  String get precipitationProbabilityMax;
  @JsonKey(name: 'uv_index_clear_sky_max')
  String get uvIndexClearSkyMax;
  @JsonKey(name: 'cloud_cover_mean')
  String get cloudCoverMean;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyUnitsCopyWith<DailyUnits> get copyWith =>
      _$DailyUnitsCopyWithImpl<DailyUnits>(this as DailyUnits, _$identity);

  /// Serializes this DailyUnits to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DailyUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2MMax, temperature2MMax) ||
                other.temperature2MMax == temperature2MMax) &&
            (identical(other.temperature2MMin, temperature2MMin) ||
                other.temperature2MMin == temperature2MMin) &&
            (identical(other.precipitationProbabilityMax,
                    precipitationProbabilityMax) ||
                other.precipitationProbabilityMax ==
                    precipitationProbabilityMax) &&
            (identical(other.uvIndexClearSkyMax, uvIndexClearSkyMax) ||
                other.uvIndexClearSkyMax == uvIndexClearSkyMax) &&
            (identical(other.cloudCoverMean, cloudCoverMean) ||
                other.cloudCoverMean == cloudCoverMean));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      temperature2MMax,
      temperature2MMin,
      precipitationProbabilityMax,
      uvIndexClearSkyMax,
      cloudCoverMean);

  @override
  String toString() {
    return 'DailyUnits(time: $time, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, precipitationProbabilityMax: $precipitationProbabilityMax, uvIndexClearSkyMax: $uvIndexClearSkyMax, cloudCoverMean: $cloudCoverMean)';
  }
}

/// @nodoc
abstract mixin class $DailyUnitsCopyWith<$Res> {
  factory $DailyUnitsCopyWith(
          DailyUnits value, $Res Function(DailyUnits) _then) =
      _$DailyUnitsCopyWithImpl;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m_max') String temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') String temperature2MMin,
      @JsonKey(name: 'precipitation_probability_max')
      String precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max') String uvIndexClearSkyMax,
      @JsonKey(name: 'cloud_cover_mean') String cloudCoverMean});
}

/// @nodoc
class _$DailyUnitsCopyWithImpl<$Res> implements $DailyUnitsCopyWith<$Res> {
  _$DailyUnitsCopyWithImpl(this._self, this._then);

  final DailyUnits _self;
  final $Res Function(DailyUnits) _then;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
    Object? precipitationProbabilityMax = null,
    Object? uvIndexClearSkyMax = null,
    Object? cloudCoverMean = null,
  }) {
    return _then(_self.copyWith(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMax: null == temperature2MMax
          ? _self.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMin: null == temperature2MMin
          ? _self.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbabilityMax: null == precipitationProbabilityMax
          ? _self.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as String,
      uvIndexClearSkyMax: null == uvIndexClearSkyMax
          ? _self.uvIndexClearSkyMax
          : uvIndexClearSkyMax // ignore: cast_nullable_to_non_nullable
              as String,
      cloudCoverMean: null == cloudCoverMean
          ? _self.cloudCoverMean
          : cloudCoverMean // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DailyUnits implements DailyUnits {
  const _DailyUnits(
      {required this.time,
      @JsonKey(name: 'temperature_2m_max') required this.temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') required this.temperature2MMin,
      @JsonKey(name: 'precipitation_probability_max')
      required this.precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max') required this.uvIndexClearSkyMax,
      @JsonKey(name: 'cloud_cover_mean') required this.cloudCoverMean});
  factory _DailyUnits.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temperature_2m_max')
  final String temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_min')
  final String temperature2MMin;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  final String precipitationProbabilityMax;
  @override
  @JsonKey(name: 'uv_index_clear_sky_max')
  final String uvIndexClearSkyMax;
  @override
  @JsonKey(name: 'cloud_cover_mean')
  final String cloudCoverMean;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyUnitsCopyWith<_DailyUnits> get copyWith =>
      __$DailyUnitsCopyWithImpl<_DailyUnits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DailyUnitsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyUnits &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature2MMax, temperature2MMax) ||
                other.temperature2MMax == temperature2MMax) &&
            (identical(other.temperature2MMin, temperature2MMin) ||
                other.temperature2MMin == temperature2MMin) &&
            (identical(other.precipitationProbabilityMax,
                    precipitationProbabilityMax) ||
                other.precipitationProbabilityMax ==
                    precipitationProbabilityMax) &&
            (identical(other.uvIndexClearSkyMax, uvIndexClearSkyMax) ||
                other.uvIndexClearSkyMax == uvIndexClearSkyMax) &&
            (identical(other.cloudCoverMean, cloudCoverMean) ||
                other.cloudCoverMean == cloudCoverMean));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      time,
      temperature2MMax,
      temperature2MMin,
      precipitationProbabilityMax,
      uvIndexClearSkyMax,
      cloudCoverMean);

  @override
  String toString() {
    return 'DailyUnits(time: $time, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, precipitationProbabilityMax: $precipitationProbabilityMax, uvIndexClearSkyMax: $uvIndexClearSkyMax, cloudCoverMean: $cloudCoverMean)';
  }
}

/// @nodoc
abstract mixin class _$DailyUnitsCopyWith<$Res>
    implements $DailyUnitsCopyWith<$Res> {
  factory _$DailyUnitsCopyWith(
          _DailyUnits value, $Res Function(_DailyUnits) _then) =
      __$DailyUnitsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m_max') String temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') String temperature2MMin,
      @JsonKey(name: 'precipitation_probability_max')
      String precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max') String uvIndexClearSkyMax,
      @JsonKey(name: 'cloud_cover_mean') String cloudCoverMean});
}

/// @nodoc
class __$DailyUnitsCopyWithImpl<$Res> implements _$DailyUnitsCopyWith<$Res> {
  __$DailyUnitsCopyWithImpl(this._self, this._then);

  final _DailyUnits _self;
  final $Res Function(_DailyUnits) _then;

  /// Create a copy of DailyUnits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
    Object? temperature2MMax = null,
    Object? temperature2MMin = null,
    Object? precipitationProbabilityMax = null,
    Object? uvIndexClearSkyMax = null,
    Object? cloudCoverMean = null,
  }) {
    return _then(_DailyUnits(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMax: null == temperature2MMax
          ? _self.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as String,
      temperature2MMin: null == temperature2MMin
          ? _self.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as String,
      precipitationProbabilityMax: null == precipitationProbabilityMax
          ? _self.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as String,
      uvIndexClearSkyMax: null == uvIndexClearSkyMax
          ? _self.uvIndexClearSkyMax
          : uvIndexClearSkyMax // ignore: cast_nullable_to_non_nullable
              as String,
      cloudCoverMean: null == cloudCoverMean
          ? _self.cloudCoverMean
          : cloudCoverMean // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
