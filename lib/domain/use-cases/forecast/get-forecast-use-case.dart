
import '../../../data/models/forecast/params_dto.dart';
import '../../entities/forecast/forecast.dart';
import '../../repositories/forecast/forecast-repository.dart';

class GetForecastUseCase{
  ForecastRepository _forecastRepository;
  GetForecastUseCase(this._forecastRepository);
  Future<ForecastMdl> call(Params params) async {
    return await _forecastRepository.getForecast(params);
  }
}