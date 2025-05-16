import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/forecast/params_dto.dart';

part 'forecast_event.freezed.dart';

@freezed
abstract class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.initial() = InitialEvent;
  const factory ForecastEvent.getForecast(Params params) = GetForecastEvent;
  const factory ForecastEvent.whatTimeIsNow() = WhatTimeIsNowEvent;
  const factory ForecastEvent.loadPhrases(String language) = LoadPhrasesEvent;
  const factory ForecastEvent.updateRandomPhrase() = UpdateRandomPhraseEvent;
}