import 'package:wheathertest/data/forecast/forecast-service.dart';
import 'package:wheathertest/domain/forecast/forecast.dart';
import 'package:wheathertest/domain/forecast/params.dart';

class ForecastRepository {
  ForecastService _forecastService;
  ForecastRepository(this._forecastService);
  Future<ForecastMdl> getForecast(ParamsMdl params) async =>  await _forecastService.getForecast(params);
}