import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';
import 'package:wheathertest/domain/use-cases/forecast/what-hourIs-now.dart';
import '../../domain/use-cases/forecast/get-do-you-know-use-case.dart';
import '../../domain/use-cases/forecast/get-forecast-use-case.dart';
import 'forecast_event.dart';
import 'forecast_state.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  GetForecastUseCase _getForecastUseCase;
  WhatHouIsNowUseCase _whatHouIsNowUseCase;
  DoYouKnowUseCase _doYoukNowUseCase;
  Timer? _timer;
  List<DoYouKnowMdl> _frases = [];

  ForecastBloc(this._getForecastUseCase, this._whatHouIsNowUseCase, this._doYoukNowUseCase) : super(const ForecastState.initial()) {
    on<GetForecastEvent>((event, emit) async{
      emit(const ForecastState.loading(true));
      final forecast = await _getForecastUseCase.call(event.params);
      emit(ForecastState.getForecast(forecast));
    });
    on<WhatTimeIsNowEvent>((event, emit) async{
      final hour = _whatHouIsNowUseCase.WhatHour();
      emit(ForecastState.whatTimeIdNow(hour));
    });
    on<LoadPhrasesEvent>((event, emit) async{
      _frases = await _doYoukNowUseCase.call(event.language);
      _startTimer(emit);
    });
    on<UpdateRandomPhraseEvent>((event, emit) async{
      if (_frases.isNotEmpty) {
        final random = Random();
        final nueva = _frases[random.nextInt(_frases.length)];
        emit(ForecastState.uploadedPhrases(_frases, nueva));
      }
    });
  }

  void _startTimer(Emitter emit) {
    if (_timer != null){_timer?.cancel();}
    add(const UpdateRandomPhraseEvent());
    _timer = Timer.periodic(const Duration(seconds: 10), (_) {
      add(const UpdateRandomPhraseEvent());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
