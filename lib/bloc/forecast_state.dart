
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/forecast.dart';

part 'forecast_state.freezed.dart';

@freezed
class ForecastState with _$ForecastState {
  const ForecastState._();
  const factory ForecastState.initialState() = InitialState;
  const factory ForecastState.loadingState() = LoadingState;
  const factory ForecastState.getForecastState(Forecast forecast) = GetForecastState;
  const factory ForecastState.errorState(String message) = ErrorState;
  const factory ForecastState.whatTimeIdNowState(String hour) = WhatTimeIsNowState;

  T when<T>({
    required T Function() initialState,
    required T Function() loadingState,
    required T Function(Forecast forecast) getForecastState,
    required T Function(String hour) whatTimeIdNowState,
    required T Function(String message) errorState,
  }) {
    return switch (this) {
      InitialState() => initialState(),
      LoadingState() => loadingState(),
      GetForecastState(:final forecast) => getForecastState(forecast),
      ErrorState(:final message) => errorState(message),
      WhatTimeIsNowState(:final hour) => whatTimeIdNowState(hour),
      ForecastState() => throw UnimplementedError(),
    };
  }

}