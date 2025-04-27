import 'package:flutter/material.dart';
import 'package:wheathertest/components/text/text-city.dart';
import 'package:wheathertest/components/text/text-standard.dart';
import 'package:wheathertest/components/text/text-temperature.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../domain/current.dart';

class NowForecast extends StatelessWidget {
  String city;
  Current current;
  NowForecast(this.city, this.current);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          current.isDay == 1 ?  current.cloudCover > 2 ? Icon(FontAwesome5Solid.cloud, color: Colors.white38) : Icon(FontAwesome5Solid.sun, color: Colors.yellow,) : Icon(FontAwesome5Solid.moon, color: Colors.white38,),
          Textcity(city),
          TextTemperature('${current.temperature2M.toString()}º'),
          TextStandard('Sensación térmica: ${current.apparentTemperature}', Colors.cyan),
          // CustomScrollView(
          //   slivers: [
          //     WeatherSliverAppBar(
          //       title: 'Hoy - Barcelona',
          //       backgroundColor: Colors.blueAccent,
          //     ),
          //     SliverList(
          //       delegate: SliverChildBuilderDelegate(
          //             (context, index) => ListTile(
          //           title: Text('Hora ${index + 1}'),
          //           subtitle: Text('20°C'),
          //         ),
          //         childCount: 30,
          //       ),
          //     ),
          //   ],
          // )
        ],
    );
  }
}
