
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';

import '../data/models/forecast/do_you_know_dto.dart';
import '../domain/entities/forecast/forecast.dart';

part 'forecast_state.freezed.dart';

@freezed
class ForecastState with _$ForecastState {
  const ForecastState._();
  const factory ForecastState.initialState() = InitialState;
  const factory ForecastState.loadingState(bool load) = LoadingState;
  const factory ForecastState.getForecastState(ForecastMdl forecast) = GetForecastState;
  const factory ForecastState.errorState(String message) = ErrorState;
  const factory ForecastState.whatTimeIdNowState(String hour) = WhatTimeIsNowState;
  const factory ForecastState.uploadedPhrases(List<DoYouKnowMdl> phrases, DoYouKnowMdl phraseNow) = UploadedPhrases;

  T when<T>({
    required T Function() initialState,
    required T Function(bool load) loadingState,
    required T Function(ForecastMdl forecast) getForecastState,
    required T Function(String hour) whatTimeIdNowState,
    required T Function(List<DoYouKnowMdl> phrases, DoYouKnowMdl phraseNow) uploadedPhrases,
    required T Function(String message) errorState,
  }) {
    return switch (this) {
      InitialState() => initialState(),
      LoadingState(:final load) => loadingState(load),
      GetForecastState(:final forecast) => getForecastState(forecast),
      ErrorState(:final message) => errorState(message),
      WhatTimeIsNowState(:final hour) => whatTimeIdNowState(hour),
      UploadedPhrases(:final phrases, :final phraseNow) => uploadedPhrases(phrases, phraseNow),
      ForecastState() => throw UnimplementedError(),
    };
  }

}