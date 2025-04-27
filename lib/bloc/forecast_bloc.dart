import 'package:bloc/bloc.dart';
import 'package:wheathertest/use-cases/get-forecast-use-case.dart';
import 'package:wheathertest/use-cases/whatHourIsNow.dart';

import 'forecast_event.dart';
import 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  GetForecastUseCase _getForecastUseCase;
  WhatHouIsNowUseCase _whatHouIsNowUseCase;

  ForecastBloc(this._getForecastUseCase, this._whatHouIsNowUseCase) : super(ForecastState.initialState()) {
    on<getForecastEvent>((event, emit) async{
      emit(ForecastState.loadingState());
      final forecast = await _getForecastUseCase.GetForecast(event.params);
      emit(ForecastState.getForecastState(forecast));
    });
    on<whatTimeIsNow>((event, emit) async{
      final hour = _whatHouIsNowUseCase.WhatHour();
      emit(ForecastState.whatTimeIdNowState(hour));
    });
  }
}
