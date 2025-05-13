import 'package:wheathertest/data/forecast/forecast-respository.dart';
import 'package:wheathertest/domain/forecast/forecast.dart';

import '../domain/forecast/params.dart';

class GetForecastUseCase{
  ForecastRepository _forecastRepository;
  GetForecastUseCase(this._forecastRepository);
  Future<ForecastMdl> GetForecast(ParamsMdl params) async {
    return await _forecastRepository.getForecast(params);
  }
}