import 'package:flutter/material.dart';
import 'package:wheathertest/components/text/text-city.dart';
import 'package:wheathertest/components/text/text-standard.dart';
import 'package:wheathertest/components/text/text-temperature.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../domain/entities/forecast/current.dart';
import '../../generated/l10n.dart';

class NowForecast extends StatelessWidget {
  String city;
  CurrentMdl current;
  NowForecast(this.city, this.current);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
          current.isDay == 1 ?  current.cloudCover > 2 ? Icon(FontAwesome5Solid.cloud, color: Colors.white38) : Icon(FontAwesome5Solid.sun, color: Colors.yellow,) : Icon(FontAwesome5Solid.moon, color: Colors.white38,),
          Textcity(city),
          TextTemperature('${current.temperature2M.toString()}º'),
          TextStandard('${s.sensacion_termina}: ${current.apparentTemperature}', Colors.cyan),
        ],
    );
  }
}
