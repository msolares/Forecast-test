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
import '../components/generic/while-you-wait.dart';
import '../domain/city.dart';
import '../domain/params.dart';

class WeatherTabView extends StatefulWidget {
  @override
  _WeatherTabViewState createState() => _WeatherTabViewState();
}

class _WeatherTabViewState extends State<WeatherTabView>
    with TickerProviderStateMixin {

  ForecastBloc _forecastBloc = Injector.appInstance.get<ForecastBloc>();
  
  List<City> cities = [City('Londres', 51.507222222222, -0.1275), City('Toronto', 43.670277777778, -79.386666666667), City('Singapur', 1.352083, -103.819836)];
  String selectedCountry = 'España'; // o 'Reino Unido'
  late City selectCity;
  bool _loading = false;

  final Map<String, String> flagEmojis = {
    'Español': '🇪🇸',
    'English': '🇬🇧',
  };
  Forecast? _forecast;

  @override
  void initState() {
    selectCity = cities.first;
    _forecastBloc.add(getForecastEvent(Params(lat: selectCity.lat, long: selectCity.long)));
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
    return DefaultTabController(
      length: cities.length,
      child: BlocProvider(
  create: (context) => _forecastBloc,
  child: BlocListener<ForecastBloc, ForecastState>(
  listener: (context, state) {
    state.when(
        initialState: (){},
        loadingState: (){
          setState(() {
            _loading = true;
          });
        },
        getForecastState: (forecast){
          setState(() {
            _loading = false;
            _forecast = forecast;
          });
        },
        errorState: (error){},
        whatTimeIdNowState: (String hour) {}
    );
  },
  child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              Text(
                '${flagEmojis[selectedCountry]} ',
                style: TextStyle(color: Colors.white),
              ),
              PopupMenuButton<String>(
                icon: Icon(Icons.language, color: Colors.white),
                onSelected: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
                itemBuilder: (context) {
                  return flagEmojis.keys.map((country) {
                    return PopupMenuItem<String>(
                      value: country,
                      child: Text('${flagEmojis[country]} $country'),
                    );
                  }).toList();
                },
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.logout, color: Colors.white),
                onPressed: () {
                  // Aquí va tu lógica de logout
                },
              ),
            ],
          ),
          bottom: TabBar(
            tabs: List.generate(
              cities.length,
                  (index) => GestureDetector(
                // onLongPress: () => _changeCity(index),
                child: Tab(text: cities[index].name),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: cities.map(
                (city) {
                  return _forecast == null ?
                  Center(child: WhileWait()) : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NowForecast(city.name, _forecast!.current),
                      CardForecastHour(_forecast!.hourly),
                      CardNextDays(_forecast!.daily)
                    ],
                  );
                },
          ).toList(),),
        backgroundColor: Colors.blueGrey.shade900,
      ),
),
),
    );
  }
}
