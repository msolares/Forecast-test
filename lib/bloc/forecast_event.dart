import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/params.dart';

part 'forecast_event.freezed.dart';

@freezed
abstract class ForecastEvent with _$ForecastEvent {
  const factory ForecastEvent.initialEvent() = initialEvent;
  const factory ForecastEvent.getForecastEvent(Params params) = getForecastEvent;
  const factory ForecastEvent.whatTimeIsNow() = whatTimeIsNow;
}