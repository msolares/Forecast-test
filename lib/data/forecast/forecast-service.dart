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

    final response = await apiClient.get('${Entorno.Enviroment()}/${Entorno.version()}/${Entorno.subdomain()}?latitude=${params.lat}&longitude=${params.long}&daily=cloud_cover_mean,temperature_2m_max,temperature_2m_min,precipitation_probability_max,uv_index_clear_sky_max&hourly=temperature_2m,precipitation_probability,apparent_temperature&current=temperature_2m,rain,wind_speed_10m,apparent_temperature,is_day,cloud_cover&timezone=GMT&forecast_days=7',  headers);
    print(response);
    return Forecast.fromJson(json.decode(response));

    // if (response != "200" || response != "201") {
    //   ResponseUser us = ResponseUser(
    //       errorCode: 200, errorDesc: "ok", user: userFromJson(response));
    //   return us;
    // }else{
    //   ResponseUser us = ResponseUser(
    //       errorCode: int.parse(response), errorDesc: "nOk", user: User(correo: "", alias: "", contrasena: "", tipo: 0));
    //   return us;
    // }
  }
}