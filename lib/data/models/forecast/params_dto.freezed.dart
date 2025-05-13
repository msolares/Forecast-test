// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'params_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Params {
  double get lat;
  double get long;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParamsCopyWith<Params> get copyWith =>
      _$ParamsCopyWithImpl<Params>(this as Params, _$identity);

  /// Serializes this Params to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Params &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @override
  String toString() {
    return 'Params(lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class $ParamsCopyWith<$Res> {
  factory $ParamsCopyWith(Params value, $Res Function(Params) _then) =
      _$ParamsCopyWithImpl;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class _$ParamsCopyWithImpl<$Res> implements $ParamsCopyWith<$Res> {
  _$ParamsCopyWithImpl(this._self, this._then);

  final Params _self;
  final $Res Function(Params) _then;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Params implements Params {
  const _Params({required this.lat, required this.long});
  factory _Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);

  @override
  final double lat;
  @override
  final double long;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParamsCopyWith<_Params> get copyWith =>
      __$ParamsCopyWithImpl<_Params>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Params &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @override
  String toString() {
    return 'Params(lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class _$ParamsCopyWith<$Res> implements $ParamsCopyWith<$Res> {
  factory _$ParamsCopyWith(_Params value, $Res Function(_Params) _then) =
      __$ParamsCopyWithImpl;
  @override
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$ParamsCopyWithImpl<$Res> implements _$ParamsCopyWith<$Res> {
  __$ParamsCopyWithImpl(this._self, this._then);

  final _Params _self;
  final $Res Function(_Params) _then;

  /// Create a copy of Params
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_Params(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
