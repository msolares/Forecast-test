// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ForecastState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastState()';
  }
}

/// @nodoc
class $ForecastStateCopyWith<$Res> {
  $ForecastStateCopyWith(ForecastState _, $Res Function(ForecastState) __);
}

/// @nodoc

class InitialState extends ForecastState {
  const InitialState() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastState.initialState()';
  }
}

/// @nodoc

class LoadingState extends ForecastState {
  const LoadingState() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ForecastState.loadingState()';
  }
}

/// @nodoc

class GetForecastState extends ForecastState {
  const GetForecastState(this.forecast) : super._();

  final Forecast forecast;

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetForecastStateCopyWith<GetForecastState> get copyWith =>
      _$GetForecastStateCopyWithImpl<GetForecastState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetForecastState &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecast);

  @override
  String toString() {
    return 'ForecastState.getForecastState(forecast: $forecast)';
  }
}

/// @nodoc
abstract mixin class $GetForecastStateCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory $GetForecastStateCopyWith(
          GetForecastState value, $Res Function(GetForecastState) _then) =
      _$GetForecastStateCopyWithImpl;
  @useResult
  $Res call({Forecast forecast});

  $ForecastCopyWith<$Res> get forecast;
}

/// @nodoc
class _$GetForecastStateCopyWithImpl<$Res>
    implements $GetForecastStateCopyWith<$Res> {
  _$GetForecastStateCopyWithImpl(this._self, this._then);

  final GetForecastState _self;
  final $Res Function(GetForecastState) _then;

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? forecast = null,
  }) {
    return _then(GetForecastState(
      null == forecast
          ? _self.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast,
    ));
  }

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<$Res> get forecast {
    return $ForecastCopyWith<$Res>(_self.forecast, (value) {
      return _then(_self.copyWith(forecast: value));
    });
  }
}

/// @nodoc

class ErrorState extends ForecastState {
  const ErrorState(this.message) : super._();

  final String message;

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ForecastState.errorState(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) _then) =
      _$ErrorStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ErrorState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class WhatTimeIsNowState extends ForecastState {
  const WhatTimeIsNowState(this.hour) : super._();

  final String hour;

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WhatTimeIsNowStateCopyWith<WhatTimeIsNowState> get copyWith =>
      _$WhatTimeIsNowStateCopyWithImpl<WhatTimeIsNowState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WhatTimeIsNowState &&
            (identical(other.hour, hour) || other.hour == hour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour);

  @override
  String toString() {
    return 'ForecastState.whatTimeIdNowState(hour: $hour)';
  }
}

/// @nodoc
abstract mixin class $WhatTimeIsNowStateCopyWith<$Res>
    implements $ForecastStateCopyWith<$Res> {
  factory $WhatTimeIsNowStateCopyWith(
          WhatTimeIsNowState value, $Res Function(WhatTimeIsNowState) _then) =
      _$WhatTimeIsNowStateCopyWithImpl;
  @useResult
  $Res call({String hour});
}

/// @nodoc
class _$WhatTimeIsNowStateCopyWithImpl<$Res>
    implements $WhatTimeIsNowStateCopyWith<$Res> {
  _$WhatTimeIsNowStateCopyWithImpl(this._self, this._then);

  final WhatTimeIsNowState _self;
  final $Res Function(WhatTimeIsNowState) _then;

  /// Create a copy of ForecastState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hour = null,
  }) {
    return _then(WhatTimeIsNowState(
      null == hour
          ? _self.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
