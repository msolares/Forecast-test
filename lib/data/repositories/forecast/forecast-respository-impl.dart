import 'package:wheathertest/data/datasources/forecast/forecast-datasources.dart';
import 'package:wheathertest/data/models/forecast/forecast_dto.dart';
import 'package:wheathertest/data/models/forecast/params_dto.dart';
import 'package:wheathertest/domain/entities/forecast/forecast.dart';

import '../../../domain/repositories/forecast/forecast-repository.dart';

class ForecastRepositoryImpl implements ForecastRepository {
  final ForecastDataSource _forecastDataSource;
  ForecastRepositoryImpl(this._forecastDataSource);

  @override
  Future<ForecastMdl> getForecast(Params params) async{
    final dto = await _forecastDataSource.getForecast(params);
    return dto.toDomain();
  }
}