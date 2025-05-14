import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';
import 'package:wheathertest/use-cases/what-hourIs-now.dart';
import '../domain/use-cases/forecast/get-do-you-know-use-case.dart';
import '../domain/use-cases/forecast/get-forecast-use-case.dart';
import 'forecast_event.dart';
import 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  GetForecastUseCase _getForecastUseCase;
  WhatHouIsNowUseCase _whatHouIsNowUseCase;
  DoYouKnowUseCase _doYoukNowUseCase;
  Timer? _timer;
  List<DoYouKnowMdl> _frases = [];

  ForecastBloc(this._getForecastUseCase, this._whatHouIsNowUseCase, this._doYoukNowUseCase) : super(ForecastState.initialState()) {
    on<getForecastEvent>((event, emit) async{
      emit(ForecastState.loadingState(true));
      final forecast = await _getForecastUseCase.call(event.params);
      emit(ForecastState.getForecastState(forecast));
    });
    on<whatTimeIsNow>((event, emit) async{
      final hour = _whatHouIsNowUseCase.WhatHour();
      emit(ForecastState.whatTimeIdNowState(hour));
    });
    on<phraseloading>((event, emit) async{
      _frases = await _doYoukNowUseCase.call(event.lg);
      _startTimer(emit);
    });
    on<updatePhraseRandom>((event, emit) async{
      if (_frases.isNotEmpty) {
        final random = Random();
        final nueva = _frases[random.nextInt(_frases.length)];
        emit(ForecastState.uploadedPhrases(_frases, nueva));
      }
    });
  }

  void _startTimer(Emitter emit) {
    if (_timer != null){_timer?.cancel();}
    add(ForecastEvent.updatePhraseRandom());
    _timer = Timer.periodic(Duration(seconds: 10), (_) {
      add(ForecastEvent.updatePhraseRandom());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
