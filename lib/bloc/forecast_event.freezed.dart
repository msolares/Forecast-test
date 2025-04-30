// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForecastEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent()';
  }
}

/// @nodoc
class $ForecastEventCopyWith<$Res> {
  $ForecastEventCopyWith(ForecastEvent _, $Res Function(ForecastEvent) __);
}

/// @nodoc

class initialEvent implements ForecastEvent {
  const initialEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is initialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent.initialEvent()';
  }
}

/// @nodoc

class getForecastEvent implements ForecastEvent {
  const getForecastEvent(this.params);

  final Params params;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $getForecastEventCopyWith<getForecastEvent> get copyWith =>
      _$getForecastEventCopyWithImpl<getForecastEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is getForecastEvent &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'ForecastEvent.getForecastEvent(params: $params)';
  }
}

/// @nodoc
abstract mixin class $getForecastEventCopyWith<$Res>
    implements $ForecastEventCopyWith<$Res> {
  factory $getForecastEventCopyWith(
          getForecastEvent value, $Res Function(getForecastEvent) _then) =
      _$getForecastEventCopyWithImpl;
  @useResult
  $Res call({Params params});

  $ParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$getForecastEventCopyWithImpl<$Res>
    implements $getForecastEventCopyWith<$Res> {
  _$getForecastEventCopyWithImpl(this._self, this._then);

  final getForecastEvent _self;
  final $Res Function(getForecastEvent) _then;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(getForecastEvent(
      null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as Params,
    ));
  }

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParamsCopyWith<$Res> get params {
    return $ParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc

class whatTimeIsNow implements ForecastEvent {
  const whatTimeIsNow();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is whatTimeIsNow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent.whatTimeIsNow()';
  }
}

/// @nodoc

class phraseloading implements ForecastEvent {
  const phraseloading(this.lg);

  final String lg;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $phraseloadingCopyWith<phraseloading> get copyWith =>
      _$phraseloadingCopyWithImpl<phraseloading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is phraseloading &&
            (identical(other.lg, lg) || other.lg == lg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lg);

  @override
  String toString() {
    return 'ForecastEvent.phraseloading(lg: $lg)';
  }
}

/// @nodoc
abstract mixin class $phraseloadingCopyWith<$Res>
    implements $ForecastEventCopyWith<$Res> {
  factory $phraseloadingCopyWith(
          phraseloading value, $Res Function(phraseloading) _then) =
      _$phraseloadingCopyWithImpl;
  @useResult
  $Res call({String lg});
}

/// @nodoc
class _$phraseloadingCopyWithImpl<$Res>
    implements $phraseloadingCopyWith<$Res> {
  _$phraseloadingCopyWithImpl(this._self, this._then);

  final phraseloading _self;
  final $Res Function(phraseloading) _then;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lg = null,
  }) {
    return _then(phraseloading(
      null == lg
          ? _self.lg
          : lg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class updatePhraseRandom implements ForecastEvent {
  const updatePhraseRandom();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is updatePhraseRandom);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent.updatePhraseRandom()';
  }
}

// dart format on
