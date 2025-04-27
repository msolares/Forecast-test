
import 'package:http/http.dart' as http;
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/forecast_bloc.dart';
import 'package:wheathertest/data/forecast/forecast-respository.dart';
import 'package:wheathertest/data/forecast/forecast-service.dart';
import 'package:wheathertest/use-cases/get-forecast-use-case.dart';
import 'package:wheathertest/use-cases/whatHourIsNow.dart';

import '../data/ApiClientHttp.dart';
import '../data/ApiClientInterfaz.dart';

void setupDI() {
  final injector = Injector.appInstance;

  // Registrar dependencias
  injector.registerSingleton<ApiClient>(() => HttpApiClient(http.Client()));
  injector.registerDependency<ForecastBloc>(() => ForecastBloc(injector.get<GetForecastUseCase>(), injector.get<WhatHouIsNowUseCase>()));

  //Inyeccion de forecast
  injector.registerSingleton<ForecastService>(() => ForecastService(injector.get<ApiClient>()));
  injector.registerSingleton<ForecastRepository>(() => ForecastRepository(injector.get<ForecastService>()));
  injector.registerSingleton<GetForecastUseCase>(() => GetForecastUseCase(injector.get<ForecastRepository>()));
  injector.registerSingleton<WhatHouIsNowUseCase>(() => WhatHouIsNowUseCase());

}
