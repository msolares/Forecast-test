
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';

import '../data/models/forecast/do_you_know_dto.dart';
import '../domain/entities/forecast/forecast.dart';

part 'forecast_state.freezed.dart';

@freezed
class ForecastState with _$ForecastState {
  const ForecastState._();
  const factory ForecastState.initial() = InitialState;
  const factory ForecastState.loading(bool load) = LoadingState;
  const factory ForecastState.getForecast(ForecastMdl forecast) = GetForecastState;
  const factory ForecastState.error(String message) = ErrorState;
  const factory ForecastState.whatTimeIdNow(String hour) = WhatTimeIsNowState;
  const factory ForecastState.uploadedPhrases(List<DoYouKnowMdl> phrases, DoYouKnowMdl phraseNow) = UploadedPhrasesState;

  T when<T>({
    required T Function() initial,
    required T Function(bool load) loading,
    required T Function(ForecastMdl forecast) getForecast,
    required T Function(String hour) whatTimeIdNow,
    required T Function(List<DoYouKnowMdl> phrases, DoYouKnowMdl phraseNow) uploadedPhrases,
    required T Function(String message) error,
  }) {
    return switch (this) {
      InitialState() => initial(),
      LoadingState(:final load) => loading(load),
      GetForecastState(:final forecast) => getForecast(forecast),
      ErrorState(:final message) => error(message),
      WhatTimeIsNowState(:final hour) => whatTimeIdNow(hour),
      UploadedPhrasesState(:final phrases, :final phraseNow) => uploadedPhrases(phrases, phraseNow),
      ForecastState() => throw UnimplementedError(),
    };
  }

}