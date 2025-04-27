import 'package:flutter/material.dart';
import 'package:wheathertest/components/text/text-standard.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ItemForecastHour extends StatelessWidget {
  String hour;
  String temp;
  int rainProbability;
  ItemForecastHour(this.hour, this.temp, this.rainProbability);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextStandard(hour, Colors.white38),
        Icon(rainProbability > 10 ? FontAwesome5Solid.cloud_rain : FontAwesome5Solid.sun, color: Colors.white,),
        TextStandard(temp, Colors.white38),
      ],
    );
  }
}
