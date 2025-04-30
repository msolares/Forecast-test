import 'dart:convert';

import 'package:wheathertest/domain/forecast.dart';

import '../../Entorno.dart';
import '../../domain/params.dart';
import '../ApiClientInterfaz.dart';

class ForecastService {
  final ApiClient apiClient;
  ForecastService(this.apiClient);

  Future<Forecast> getForecast(Params params) async{
    var headers = {
      'Content-Type': 'application/json',
    };
    final baseUrl = '${Entorno.Enviroment()}/${Entorno.version()}/${Entorno.subdomain()}';
    final uri = Uri.parse(baseUrl).replace(
      queryParameters: {
        'latitude': params.lat.toString(),
        'longitude': params.long.toString(),
        'daily': 'cloud_cover_mean,temperature_2m_max,temperature_2m_min,precipitation_probability_max,uv_index_clear_sky_max',
        'hourly': 'temperature_2m,precipitation_probability,apparent_temperature,cloud_cover',
        'current': 'temperature_2m,rain,wind_speed_10m,apparent_temperature,is_day,cloud_cover',
        'timezone': 'GMT',
        'forecast_days': '7',
      },
    );
    final url = uri.toString();
    final response = await apiClient.get(url,  headers);
    print(response);
    return Forecast.fromJson(json.decode(response));
  }
}