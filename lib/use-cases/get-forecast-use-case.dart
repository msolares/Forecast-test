import 'package:wheathertest/data/forecast/forecast-respository.dart';
import 'package:wheathertest/domain/forecast.dart';

import '../domain/params.dart';

class GetForecastUseCase{
  ForecastRepository _forecastRepository;
  GetForecastUseCase(this._forecastRepository);
  Future<Forecast> GetForecast(Params params) async {
    return await _forecastRepository.getForecast(params);
  }
}