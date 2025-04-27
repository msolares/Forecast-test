import 'package:wheathertest/data/forecast/forecast-service.dart';
import 'package:wheathertest/domain/forecast.dart';
import 'package:wheathertest/domain/params.dart';

class ForecastRepository {
  ForecastService _forecastService;
  ForecastRepository(this._forecastService);
  Future<Forecast> getForecast(Params params) async =>  await _forecastService.getForecast(params);
}