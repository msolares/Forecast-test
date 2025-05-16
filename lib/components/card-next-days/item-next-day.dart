import 'package:flutter/material.dart';
import 'package:wheathertest/components/text/text-standard.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:wheathertest/extension-functions/format-temperature.dart';
import 'package:wheathertest/extension-functions/format-days.dart';

class ItemNextDays extends StatelessWidget {
  String time;
  double min;
  double max;
  int rainProbability;
  int cloudCoverMean;


  ItemNextDays(this.time, this.min, this.max, this.rainProbability, this.cloudCoverMean);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: size.width/3.4, child: TextStandard(time.toDays(), Colors.white38, ), ),
        SizedBox(width: size.width/6, child: TextStandard(min.toTemp(), Colors.white38)),
        SizedBox(
          width: size.width/6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(rainProbability > 20 ? FontAwesome5Solid.cloud_rain : cloudCoverMean > 30 ? FontAwesome5Solid.cloud : FontAwesome5Solid.sun, color: Colors.white,),
              Visibility(
                  visible: rainProbability > 20,
                  child: Text('$rainProbability %', style: TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)
              )
            ],
          ),
        ),
        SizedBox(width: size.width/6, child: TextStandard(max.toTemp(), Colors.white38)),
      ],
    );
  }
}
