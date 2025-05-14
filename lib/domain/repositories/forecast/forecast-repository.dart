import 'package:wheathertest/data/models/forecast/params_dto.dart';
import 'package:wheathertest/domain/entities/forecast/forecast.dart';

abstract class ForecastRepository {
  Future<ForecastMdl> getForecast(Params params);
}