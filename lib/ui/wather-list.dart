import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/forecast_event.dart';
import 'package:wheathertest/bloc/forecast_state.dart';
import 'package:wheathertest/bloc/user/user_bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/bloc/user/user_state.dart';
import 'package:wheathertest/components/forecast-now/now-forecast.dart';
import 'package:wheathertest/components/phrases/card-phrases.dart';
import 'package:wheathertest/domain/forecast/forecast.dart';
import 'package:wheathertest/ui/contact.dart';
import 'package:wheathertest/ui/login.dart';
import 'package:wheathertest/util/cities/load-cities.dart';
import 'package:wheathertest/util/navegacion/navegation.dart';

import '../bloc/forecast_bloc.dart';
import '../bloc/locale/locale_bloc.dart';
import '../bloc/locale/locale_state.dart';
import '../components/card-forecast-hour/card-forecast-hour.dart';
import '../components/card-next-days/card-next-days.dart';
import '../components/flag-selector/build-flag-selector.dart';
import '../components/generic/while-you-wait.dart';
import '../domain/forecast/city.dart';
import '../domain/forecast/params.dart';
import '../generated/l10n.dart';

class WeatherTabView extends StatefulWidget {
  @override
  _WeatherTabViewState createState() => _WeatherTabViewState();
}

class _WeatherTabViewState extends State<WeatherTabView>
    with TickerProviderStateMixin {

  ForecastBloc _forecastBloc = Injector.appInstance.get<ForecastBloc>();
  UserBloc _userBloc = Injector.appInstance.get<UserBloc>();
  
  List<CityMdl> cities = [CityMdl(S.current.londres, 51.507222222222, -0.1275), CityMdl(S.current.toronto, 43.670277777778, -79.386666666667), CityMdl(S.current.singapur, 1.352083, -103.819836)];
  late CityMdl selectCity;
  late TabController _tabController;
  bool _loading = false;
  ForecastMdl? _forecast;
  String _phrase = "";


  @override
  void initState() {
    crearTab();
    _forecastBloc.add(getForecastEvent(ParamsMdl(lat: selectCity.lat, long: selectCity.long)));
    super.initState();
  }

  crearTab(){
    _tabController = TabController(length: cities.length, vsync: this);
    selectCity = cities.first;
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      final selected = cities[_tabController.index];
      setState(() {
        selectCity = selected;
      });
      _forecastBloc.add(getForecastEvent(ParamsMdl(lat: selected.lat, long: selected.long)));
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    cities = LoadCities().getCities(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value:  _userBloc),
        BlocProvider(create: (_) => _forecastBloc),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ForecastBloc, ForecastState>(
            listener: (context, state) {
              state.when(
                initialState: () {},
                loadingState: (load) {
                  setState(() {
                    _loading = load;
                  });
                },
                getForecastState: (forecast) {
                  setState(() {
                    _loading = false;
                    _forecast = forecast;
                  });
                  _forecastBloc.add(ForecastEvent.phraseloading("en"));
                },
                uploadedPhrases: (phrases, phrase){
                  setState(() {
                    _phrase = phrase.texto;
                  });
                },
                errorState: (error) {},
                whatTimeIdNowState: (String hour) {},
              );
            },
          ),
          BlocListener<LocaleBloc, LocaleState>(
            listener: (context, state) {
              print('LocaleBloc emitió nuevo locale: ${state.locale}');
              _forecastBloc.add(ForecastEvent.phraseloading(state.locale.languageCode));
              crearTab();
              setState(() {});
            },
          ),
          BlocListener<UserBloc, UserState>(
            listener: (context, state) {
              state.when(
                  initialState: (){},
                  loadingState: (load){},
                  loginState: (login){},
                  logOutState: (logout){
                    if (logout) Navegacion().goToFull(context, LoginPage());
                  },
                  registreState: (registre) {}
              );
            },
          ),

        ],

        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Row(
              children: [
                BuildFlagSeletor(),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.email, color: Colors.white),
                  onPressed: () {
                    Navegacion().goTo(context, ContactFormPage());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.logout, color: Colors.white),
                  onPressed: () {
                    _userBloc.add(UserEvent.loginOut());
                  },
                ),

              ],
            ),
            bottom: TabBar(
              controller: _tabController,
              tabs: List.generate(
                cities.length,
                    (index) => Tab(text: cities[index].name),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: cities.map(
                  (city) {
                return _forecast == null
                    ? Center(child: WhileWait())
                    : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 16),
                      NowForecast(city.name, _forecast!.current),
                      CardForecastHour(_forecast!.hourly),
                      CardNextDays(_forecast!.daily),
                      CardPhrases(_phrase)
                    ],
                  ),
                );
              },
            ).toList(),
          ),
          backgroundColor: Colors.blueGrey.shade900,
        ),
      ),
    );
  }
}
