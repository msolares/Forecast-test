
import 'package:http/http.dart' as http;
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/forecast_bloc.dart';
import 'package:wheathertest/bloc/locale/locale_bloc.dart';
import 'package:wheathertest/bloc/user/user_bloc.dart';
import 'package:wheathertest/data/datasources/forecast/forecast-datasources.dart';
import 'package:wheathertest/data/datasources/user/login-datasource.dart';
import 'package:wheathertest/data/datasources/user/registre-datasource.dart';
import 'package:wheathertest/data/do-you-know/do-you-know-loader.dart';
import 'package:wheathertest/data/do-you-know/local-provider.dart';
import 'package:wheathertest/data/repositories/user/user-respository-impl.dart';
import 'package:wheathertest/domain/repositories/user/user-repository.dart';
import 'package:wheathertest/domain/use-cases/forecast/get-do-you-know-use-case.dart';
import '../data/api-client-http.dart';
import '../data/api-client-interfaz.dart';
import '../data/repositories/forecast/forecast-respository-impl.dart';
import '../domain/repositories/forecast/forecast-repository.dart';
import '../domain/use-cases/forecast/get-forecast-use-case.dart';
import '../domain/use-cases/user/get-user-login-use-case.dart';
import '../domain/use-cases/user/get-user-registre-use-case.dart';
import '../use-cases/what-hourIs-now.dart';

void setupDI() {
  final injector = Injector.appInstance;

  // Servicios HTTP
  injector.registerSingleton<ApiClient>(() => HttpApiClient(http.Client()));

  // Bloc de idioma
  injector.registerSingleton<LocaleBloc>(() => LocaleBloc());

  // Proveedor de Locale dinámico
  injector.registerSingleton<LocaleProvider>(
        () => LocaleProvider(getCurrentLocale: () => injector.get<LocaleBloc>().state.locale),
  );

  // Frases con LocaleProvider
  injector.registerSingleton<DoYouKnowLoader>(
        () => DoYouKnowLoader(injector.get<LocaleProvider>()),
  );
  injector.registerSingleton<DoYouKnowUseCase>(
        () => DoYouKnowUseCase(injector.get<DoYouKnowLoader>()),
  );

  // Forecast
  injector.registerSingleton<ForecastDataSource>(
        () => ForecastDataSource(injector.get<ApiClient>()),
  );
  injector.registerSingleton<ForecastRepository>(
        () => ForecastRepositoryImpl(injector.get<ForecastDataSource>()),
  );
  injector.registerSingleton<GetForecastUseCase>(
        () => GetForecastUseCase(injector.get<ForecastRepository>()),
  );

  injector.registerSingleton<WhatHouIsNowUseCase>(
        () => WhatHouIsNowUseCase(),
  );

  injector.registerDependency<ForecastBloc>(
        () => ForecastBloc(
      injector.get<GetForecastUseCase>(),
      injector.get<WhatHouIsNowUseCase>(),
      injector.get<DoYouKnowUseCase>(),
    ),
  );

  // Usuario
  injector.registerSingleton<LoginDataSource>(
        () => LoginDataSource(injector.get<ApiClient>()),
  );
  injector.registerSingleton<UserRepository>(
        () => UserRepositoryImpl(injector.get<LoginDataSource>(),injector.get<RegistreDataSource>(),),
  );
  injector.registerSingleton<LoginUseCase>(
        () => LoginUseCase(injector.get<UserRepository>()),
  );

  injector.registerSingleton<RegistreDataSource>(
        () => RegistreDataSource(injector.get<ApiClient>()),
  );

  injector.registerSingleton<RegistreUseCase>(
        () => RegistreUseCase(injector.get<UserRepository>()),
  );

  injector.registerSingleton<UserBloc>(
        () => UserBloc(injector.get<LoginUseCase>(), injector.get<RegistreUseCase>()),
  );
}
