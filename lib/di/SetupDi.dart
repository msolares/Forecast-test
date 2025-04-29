
import 'package:http/http.dart' as http;
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/forecast_bloc.dart';
import 'package:wheathertest/bloc/locale/locale_bloc.dart';
import 'package:wheathertest/bloc/user/user_bloc.dart';
import 'package:wheathertest/data/forecast/forecast-respository.dart';
import 'package:wheathertest/data/forecast/forecast-service.dart';
import 'package:wheathertest/data/user/login-respository.dart';
import 'package:wheathertest/data/user/login-service.dart';
import 'package:wheathertest/data/user/registre-respository.dart';
import 'package:wheathertest/data/user/registre-service.dart';
import 'package:wheathertest/use-cases/get-forecast-use-case.dart';
import 'package:wheathertest/use-cases/login.dart';
import 'package:wheathertest/use-cases/whatHourIsNow.dart';

import '../data/ApiClientHttp.dart';
import '../data/ApiClientInterfaz.dart';
import '../use-cases/registre-use-case.dart';

void setupDI() {
  final injector = Injector.appInstance;

  injector.registerSingleton<ApiClient>(() => HttpApiClient(http.Client()));
  injector.registerDependency<ForecastBloc>(() => ForecastBloc(injector.get<GetForecastUseCase>(), injector.get<WhatHouIsNowUseCase>()));

  injector.registerSingleton<ForecastService>(() => ForecastService(injector.get<ApiClient>()));
  injector.registerSingleton<ForecastRepository>(() => ForecastRepository(injector.get<ForecastService>()));
  injector.registerSingleton<GetForecastUseCase>(() => GetForecastUseCase(injector.get<ForecastRepository>()));
  injector.registerSingleton<WhatHouIsNowUseCase>(() => WhatHouIsNowUseCase());

  Injector.appInstance.registerSingleton<LocaleBloc>(() => LocaleBloc());

  Injector.appInstance.registerSingleton<UserBloc >(() => UserBloc(injector.get<LoginUseCase>(), injector.get<RegistreUseCase>()));
  injector.registerSingleton<LoginService>(() => LoginService(injector.get<ApiClient>()));
  injector.registerSingleton<LoginRepository>(() => LoginRepository(injector.get<LoginService>()));
  injector.registerSingleton<LoginUseCase>(() => LoginUseCase(injector.get<LoginRepository>()));

  injector.registerSingleton<RegistreService>(() => RegistreService(injector.get<ApiClient>()));
  injector.registerSingleton<RegistreRepository>(() => RegistreRepository(injector.get<RegistreService>()));
  injector.registerSingleton<RegistreUseCase>(() => RegistreUseCase(injector.get<RegistreRepository>()));

}
