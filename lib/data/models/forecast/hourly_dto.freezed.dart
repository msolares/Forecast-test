// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Hourly {
  List<String> get time;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M;
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability;
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature;
  @JsonKey(name: 'cloud_cover')
  List<int> get cloudCover;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<Hourly> get copyWith =>
      _$HourlyCopyWithImpl<Hourly>(this as Hourly, _$identity);

  /// Serializes this Hourly to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Hourly &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.temperature2M, temperature2M) &&
            const DeepCollectionEquality().equals(
                other.precipitationProbability, precipitationProbability) &&
            const DeepCollectionEquality()
                .equals(other.apparentTemperature, apparentTemperature) &&
            const DeepCollectionEquality()
                .equals(other.cloudCover, cloudCover));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(temperature2M),
      const DeepCollectionEquality().hash(precipitationProbability),
      const DeepCollectionEquality().hash(apparentTemperature),
      const DeepCollectionEquality().hash(cloudCover));

  @override
  String toString() {
    return 'Hourly(time: $time, temperature2M: $temperature2M, precipitationProbability: $precipitationProbability, apparentTemperature: $apparentTemperature, cloudCover: $cloudCover)';
  }
}

/// @nodoc
abstract mixin class $HourlyCopyWith<$Res> {
  factory $HourlyCopyWith(Hourly value, $Res Function(Hourly) _then) =
      _$HourlyCopyWithImpl;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2M,
      @JsonKey(name: 'precipitation_probability')
      List<int> precipitationProbability,
      @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
      @JsonKey(name: 'cloud_cover') List<int> cloudCover});
}

/// @nodoc
class _$HourlyCopyWithImpl<$Res> implements $HourlyCopyWith<$Res> {
  _$HourlyCopyWithImpl(this._self, this._then);

  final Hourly _self;
  final $Res Function(Hourly) _then;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? precipitationProbability = null,
    Object? apparentTemperature = null,
    Object? cloudCover = null,
  }) {
    return _then(_self.copyWith(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2M: null == temperature2M
          ? _self.temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      precipitationProbability: null == precipitationProbability
          ? _self.precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apparentTemperature: null == apparentTemperature
          ? _self.apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      cloudCover: null == cloudCover
          ? _self.cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Hourly implements Hourly {
  const _Hourly(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature2M,
      @JsonKey(name: 'precipitation_probability')
      required final List<int> precipitationProbability,
      @JsonKey(name: 'apparent_temperature')
      required final List<double> apparentTemperature,
      @JsonKey(name: 'cloud_cover') required final List<int> cloudCover})
      : _time = time,
        _temperature2M = temperature2M,
        _precipitationProbability = precipitationProbability,
        _apparentTemperature = apparentTemperature,
        _cloudCover = cloudCover;
  factory _Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature2M;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature2M {
    if (_temperature2M is EqualUnmodifiableListView) return _temperature2M;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2M);
  }

  final List<int> _precipitationProbability;
  @override
  @JsonKey(name: 'precipitation_probability')
  List<int> get precipitationProbability {
    if (_precipitationProbability is EqualUnmodifiableListView)
      return _precipitationProbability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitationProbability);
  }

  final List<double> _apparentTemperature;
  @override
  @JsonKey(name: 'apparent_temperature')
  List<double> get apparentTemperature {
    if (_apparentTemperature is EqualUnmodifiableListView)
      return _apparentTemperature;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperature);
  }

  final List<int> _cloudCover;
  @override
  @JsonKey(name: 'cloud_cover')
  List<int> get cloudCover {
    if (_cloudCover is EqualUnmodifiableListView) return _cloudCover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cloudCover);
  }

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HourlyCopyWith<_Hourly> get copyWith =>
      __$HourlyCopyWithImpl<_Hourly>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HourlyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Hourly &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature2M, _temperature2M) &&
            const DeepCollectionEquality().equals(
                other._precipitationProbability, _precipitationProbability) &&
            const DeepCollectionEquality()
                .equals(other._apparentTemperature, _apparentTemperature) &&
            const DeepCollectionEquality()
                .equals(other._cloudCover, _cloudCover));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature2M),
      const DeepCollectionEquality().hash(_precipitationProbability),
      const DeepCollectionEquality().hash(_apparentTemperature),
      const DeepCollectionEquality().hash(_cloudCover));

  @override
  String toString() {
    return 'Hourly(time: $time, temperature2M: $temperature2M, precipitationProbability: $precipitationProbability, apparentTemperature: $apparentTemperature, cloudCover: $cloudCover)';
  }
}

/// @nodoc
abstract mixin class _$HourlyCopyWith<$Res> implements $HourlyCopyWith<$Res> {
  factory _$HourlyCopyWith(_Hourly value, $Res Function(_Hourly) _then) =
      __$HourlyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature2M,
      @JsonKey(name: 'precipitation_probability')
      List<int> precipitationProbability,
      @JsonKey(name: 'apparent_temperature') List<double> apparentTemperature,
      @JsonKey(name: 'cloud_cover') List<int> cloudCover});
}

/// @nodoc
class __$HourlyCopyWithImpl<$Res> implements _$HourlyCopyWith<$Res> {
  __$HourlyCopyWithImpl(this._self, this._then);

  final _Hourly _self;
  final $Res Function(_Hourly) _then;

  /// Create a copy of Hourly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
    Object? temperature2M = null,
    Object? precipitationProbability = null,
    Object? apparentTemperature = null,
    Object? cloudCover = null,
  }) {
    return _then(_Hourly(
      time: null == time
          ? _self._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature2M: null == temperature2M
          ? _self._temperature2M
          : temperature2M // ignore: cast_nullable_to_non_nullable
              as List<double>,
      precipitationProbability: null == precipitationProbability
          ? _self._precipitationProbability
          : precipitationProbability // ignore: cast_nullable_to_non_nullable
              as List<int>,
      apparentTemperature: null == apparentTemperature
          ? _self._apparentTemperature
          : apparentTemperature // ignore: cast_nullable_to_non_nullable
              as List<double>,
      cloudCover: null == cloudCover
          ? _self._cloudCover
          : cloudCover // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

// dart format on
