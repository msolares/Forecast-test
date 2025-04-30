import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/forecast_event.dart';
import 'package:wheathertest/bloc/forecast_state.dart';
import 'package:wheathertest/components/now-forecast.dart';
import 'package:wheathertest/domain/forecast.dart';

import '../bloc/forecast_bloc.dart';
import '../components/card-forecast-hour/card-forecast-hour.dart';
import '../components/card-next-days/card-next-days.dart';
import '../components/flag-selector/BuildFlagSelector.dart';
import '../components/generic/while-you-wait.dart';
import '../domain/city.dart';
import '../domain/params.dart';
import '../generated/l10n.dart';

class WeatherTabView extends StatefulWidget {
  @override
  _WeatherTabViewState createState() => _WeatherTabViewState();
}

class _WeatherTabViewState extends State<WeatherTabView>
    with TickerProviderStateMixin {

  ForecastBloc _forecastBloc = Injector.appInstance.get<ForecastBloc>();
  
  List<City> cities = [City(S.current.londres, 51.507222222222, -0.1275), City(S.current.tokio, 43.670277777778, -79.386666666667), City(S.current.singapur, 1.352083, -103.819836)];
  late City selectCity;
  late TabController _tabController;
  bool _loading = false;
  Forecast? _forecast;
  int _previousIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: cities.length, vsync: this);
    selectCity = cities.first;
    _forecastBloc.add(getForecastEvent(Params(lat: selectCity.lat, long: selectCity.long)));
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      final selected = cities[_tabController.index];
      setState(() {
        selectCity = selected;
      });
      _forecastBloc.add(getForecastEvent(Params(lat: selected.lat, long: selected.long)));
    });
    super.initState();
  }

  // void _changeCity(int index) async {
  //   final newCity = await showDialog<String>(
  //     context: context,
  //     builder: (context) {
  //       final availableCities = ['Madrid', 'Barcelona', 'Toronto', 'Londres', 'Singapur'];
  //       return AlertDialog(
  //         title: Text('Selecciona una ciudad'),
  //         content: SizedBox(
  //           width: double.maxFinite,
  //           child: ListView.builder(
  //             shrinkWrap: true,
  //             itemCount: availableCities.length,
  //             itemBuilder: (_, i) {
  //               return ListTile(
  //                 title: Text(availableCities[i]),
  //                 onTap: () => Navigator.pop(context, availableCities[i]),
  //               );
  //             },
  //           ),
  //         ),
  //       );
  //     },
  //   );
  //
  //   if (newCity != null) {
  //     setState(() {
  //       cities[index] = newCity;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocProvider(
      create: (context) => _forecastBloc,
      child: BlocListener<ForecastBloc, ForecastState>(
        listener: (context, state) {
          state.when(
            initialState: () {},
            loadingState: () {
              setState(() {
                _loading = true;
              });
            },
            getForecastState: (forecast) {
              setState(() {
                _loading = false;
                _forecast = forecast;
              });
            },
            errorState: (error) {},
            whatTimeIdNowState: (String hour) {},
          );
        },
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
                    // Aquí va tu lógica de logout
                  },
                ),
                IconButton(
                  icon: Icon(Icons.logout, color: Colors.white),
                  onPressed: () {
                    // Aquí va tu lógica de logout
                  },
                ),

              ],
            ),
            bottom: TabBar(
              controller: _tabController, // ✅ Ahora usamos nuestro controller
              tabs: List.generate(
                cities.length,
                    (index) => Tab(text: cities[index].name),
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController, // ✅ Igualmente aquí
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
