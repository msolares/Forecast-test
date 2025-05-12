import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:wheathertest/domain/do-you-know.dart';
import 'package:wheathertest/use-cases/get-forecast-use-case.dart';
import 'package:wheathertest/use-cases/what-hourIs-now.dart';

import '../use-cases/get-frases-use-case.dart';
import 'forecast_event.dart';
import 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  GetForecastUseCase _getForecastUseCase;
  WhatHouIsNowUseCase _whatHouIsNowUseCase;
  GetPhrasesUseCase _getFrases;
  Timer? _timer;
  List<DoYouKnow> _frases = [];

  ForecastBloc(this._getForecastUseCase, this._whatHouIsNowUseCase, this._getFrases) : super(ForecastState.initialState()) {


    on<getForecastEvent>((event, emit) async{
      emit(ForecastState.loadingState(true));
      final forecast = await _getForecastUseCase.GetForecast(event.params);
      emit(ForecastState.getForecastState(forecast));
    });
    on<whatTimeIsNow>((event, emit) async{
      final hour = _whatHouIsNowUseCase.WhatHour();
      emit(ForecastState.whatTimeIdNowState(hour));
    });
    on<phraseloading>((event, emit) async{
      _frases = await _getFrases(event.lg);
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
