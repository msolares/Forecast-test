// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Daily {
  List<String> get time;
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2MMax;
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2MMin;
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax;
  @JsonKey(name: 'uv_index_clear_sky_max')
  List<double> get uvIndexClearSkyMax;
  @JsonKey(name: 'cloud_cover_mean')
  List<int> get cloudCoverMean;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DailyCopyWith<Daily> get copyWith =>
      _$DailyCopyWithImpl<Daily>(this as Daily, _$identity);

  /// Serializes this Daily to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Daily &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.temperature2MMax, temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other.temperature2MMin, temperature2MMin) &&
            const DeepCollectionEquality().equals(
                other.precipitationProbabilityMax,
                precipitationProbabilityMax) &&
            const DeepCollectionEquality()
                .equals(other.uvIndexClearSkyMax, uvIndexClearSkyMax) &&
            const DeepCollectionEquality()
                .equals(other.cloudCoverMean, cloudCoverMean));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(temperature2MMax),
      const DeepCollectionEquality().hash(temperature2MMin),
      const DeepCollectionEquality().hash(precipitationProbabilityMax),
      const DeepCollectionEquality().hash(uvIndexClearSkyMax),
      const DeepCollectionEquality().hash(cloudCoverMean));

  @override
  String toString() {
    return 'Daily(time: $time, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, precipitationProbabilityMax: $precipitationProbabilityMax, uvIndexClearSkyMax: $uvIndexClearSkyMax, cloudCoverMean: $cloudCoverMean)';
  }
}

/// @nodoc
abstract mixin class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) _then) =
      _$DailyCopyWithImpl;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m_max') List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double> temperature2MMin,
      @JsonKey(name: 'precipitation_probability_max')
      List<int> precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max') List<double> uvIndexClearSkyMax,
      @JsonKey(name: 'cloud_cover_mean') List<int> cloudCoverMean});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res> implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._self, this._then);

  final Daily _self;
  final $Res Function(Daily) _then;

  /// Create a copy of Daily
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
              as List<String>,
      temperature2MMax: null == temperature2MMax
          ? _self.temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature2MMin: null == temperature2MMin
          ? _self.temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      precipitationProbabilityMax: null == precipitationProbabilityMax
          ? _self.precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<int>,
      uvIndexClearSkyMax: null == uvIndexClearSkyMax
          ? _self.uvIndexClearSkyMax
          : uvIndexClearSkyMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      cloudCoverMean: null == cloudCoverMean
          ? _self.cloudCoverMean
          : cloudCoverMean // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Daily implements Daily {
  const _Daily(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m_max')
      required final List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min')
      required final List<double> temperature2MMin,
      @JsonKey(name: 'precipitation_probability_max')
      required final List<int> precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max')
      required final List<double> uvIndexClearSkyMax,
      @JsonKey(name: 'cloud_cover_mean')
      required final List<int> cloudCoverMean})
      : _time = time,
        _temperature2MMax = temperature2MMax,
        _temperature2MMin = temperature2MMin,
        _precipitationProbabilityMax = precipitationProbabilityMax,
        _uvIndexClearSkyMax = uvIndexClearSkyMax,
        _cloudCoverMean = cloudCoverMean;
  factory _Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2MMax;
  @override
  @JsonKey(name: 'temperature_2m_max')
  List<double> get temperature2MMax {
    if (_temperature2MMax is EqualUnmodifiableListView)
      return _temperature2MMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2MMax);
  }

  final List<double> _temperature2MMin;
  @override
  @JsonKey(name: 'temperature_2m_min')
  List<double> get temperature2MMin {
    if (_temperature2MMin is EqualUnmodifiableListView)
      return _temperature2MMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2MMin);
  }

  final List<int> _precipitationProbabilityMax;
  @override
  @JsonKey(name: 'precipitation_probability_max')
  List<int> get precipitationProbabilityMax {
    if (_precipitationProbabilityMax is EqualUnmodifiableListView)
      return _precipitationProbabilityMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbabilityMax);
  }

  final List<double> _uvIndexClearSkyMax;
  @override
  @JsonKey(name: 'uv_index_clear_sky_max')
  List<double> get uvIndexClearSkyMax {
    if (_uvIndexClearSkyMax is EqualUnmodifiableListView)
      return _uvIndexClearSkyMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uvIndexClearSkyMax);
  }

  final List<int> _cloudCoverMean;
  @override
  @JsonKey(name: 'cloud_cover_mean')
  List<int> get cloudCoverMean {
    if (_cloudCoverMean is EqualUnmodifiableListView) return _cloudCoverMean;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cloudCoverMean);
  }

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DailyCopyWith<_Daily> get copyWith =>
      __$DailyCopyWithImpl<_Daily>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DailyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Daily &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMax, _temperature2MMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2MMin, _temperature2MMin) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbabilityMax,
                _precipitationProbabilityMax) &&
            const DeepCollectionEquality()
                .equals(other._uvIndexClearSkyMax, _uvIndexClearSkyMax) &&
            const DeepCollectionEquality()
                .equals(other._cloudCoverMean, _cloudCoverMean));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2MMax),
      const DeepCollectionEquality().hash(_temperature2MMin),
      const DeepCollectionEquality().hash(_precipitationProbabilityMax),
      const DeepCollectionEquality().hash(_uvIndexClearSkyMax),
      const DeepCollectionEquality().hash(_cloudCoverMean));

  @override
  String toString() {
    return 'Daily(time: $time, temperature2MMax: $temperature2MMax, temperature2MMin: $temperature2MMin, precipitationProbabilityMax: $precipitationProbabilityMax, uvIndexClearSkyMax: $uvIndexClearSkyMax, cloudCoverMean: $cloudCoverMean)';
  }
}

/// @nodoc
abstract mixin class _$DailyCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$DailyCopyWith(_Daily value, $Res Function(_Daily) _then) =
      __$DailyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m_max') List<double> temperature2MMax,
      @JsonKey(name: 'temperature_2m_min') List<double> temperature2MMin,
      @JsonKey(name: 'precipitation_probability_max')
      List<int> precipitationProbabilityMax,
      @JsonKey(name: 'uv_index_clear_sky_max') List<double> uvIndexClearSkyMax,
      @JsonKey(name: 'cloud_cover_mean') List<int> cloudCoverMean});
}

/// @nodoc
class __$DailyCopyWithImpl<$Res> implements _$DailyCopyWith<$Res> {
  __$DailyCopyWithImpl(this._self, this._then);

  final _Daily _self;
  final $Res Function(_Daily) _then;

  /// Create a copy of Daily
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
    return _then(_Daily(
      time: null == time
          ? _self._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2MMax: null == temperature2MMax
          ? _self._temperature2MMax
          : temperature2MMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      temperature2MMin: null == temperature2MMin
          ? _self._temperature2MMin
          : temperature2MMin // ignore: cast_nullable_to_non_nullable
              as List<double>,
      precipitationProbabilityMax: null == precipitationProbabilityMax
          ? _self._precipitationProbabilityMax
          : precipitationProbabilityMax // ignore: cast_nullable_to_non_nullable
              as List<int>,
      uvIndexClearSkyMax: null == uvIndexClearSkyMax
          ? _self._uvIndexClearSkyMax
          : uvIndexClearSkyMax // ignore: cast_nullable_to_non_nullable
              as List<double>,
      cloudCoverMean: null == cloudCoverMean
          ? _self._cloudCoverMean
          : cloudCoverMean // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

// dart format on
