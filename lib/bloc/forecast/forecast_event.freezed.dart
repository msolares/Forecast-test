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

class InitialEvent implements ForecastEvent {
  const InitialEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent.initial()';
  }
}

/// @nodoc

class GetForecastEvent implements ForecastEvent {
  const GetForecastEvent(this.params);

  final Params params;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetForecastEventCopyWith<GetForecastEvent> get copyWith =>
      _$GetForecastEventCopyWithImpl<GetForecastEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetForecastEvent &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'ForecastEvent.getForecast(params: $params)';
  }
}

/// @nodoc
abstract mixin class $GetForecastEventCopyWith<$Res>
    implements $ForecastEventCopyWith<$Res> {
  factory $GetForecastEventCopyWith(
          GetForecastEvent value, $Res Function(GetForecastEvent) _then) =
      _$GetForecastEventCopyWithImpl;
  @useResult
  $Res call({Params params});

  $ParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$GetForecastEventCopyWithImpl<$Res>
    implements $GetForecastEventCopyWith<$Res> {
  _$GetForecastEventCopyWithImpl(this._self, this._then);

  final GetForecastEvent _self;
  final $Res Function(GetForecastEvent) _then;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(GetForecastEvent(
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

class WhatTimeIsNowEvent implements ForecastEvent {
  const WhatTimeIsNowEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WhatTimeIsNowEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent.whatTimeIsNow()';
  }
}

/// @nodoc

class LoadPhrasesEvent implements ForecastEvent {
  const LoadPhrasesEvent(this.language);

  final String language;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadPhrasesEventCopyWith<LoadPhrasesEvent> get copyWith =>
      _$LoadPhrasesEventCopyWithImpl<LoadPhrasesEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadPhrasesEvent &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  @override
  String toString() {
    return 'ForecastEvent.loadPhrases(language: $language)';
  }
}

/// @nodoc
abstract mixin class $LoadPhrasesEventCopyWith<$Res>
    implements $ForecastEventCopyWith<$Res> {
  factory $LoadPhrasesEventCopyWith(
          LoadPhrasesEvent value, $Res Function(LoadPhrasesEvent) _then) =
      _$LoadPhrasesEventCopyWithImpl;
  @useResult
  $Res call({String language});
}

/// @nodoc
class _$LoadPhrasesEventCopyWithImpl<$Res>
    implements $LoadPhrasesEventCopyWith<$Res> {
  _$LoadPhrasesEventCopyWithImpl(this._self, this._then);

  final LoadPhrasesEvent _self;
  final $Res Function(LoadPhrasesEvent) _then;

  /// Create a copy of ForecastEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? language = null,
  }) {
    return _then(LoadPhrasesEvent(
      null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UpdateRandomPhraseEvent implements ForecastEvent {
  const UpdateRandomPhraseEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateRandomPhraseEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastEvent.updateRandomPhrase()';
  }
}

// dart format on
