import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/forecast_event.dart';
import 'package:wheathertest/components/text/text-standard.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:wheathertest/domain/entities/forecast/hourly.dart';
import 'package:wheathertest/extension-functions/change-temp.dart';
import 'package:wheathertest/extension-functions/hour-format.dart';

import '../../bloc/forecast_bloc.dart';
import '../../bloc/forecast_state.dart';
import '../../data/models/forecast/hourly_dto.dart';
import '../../generated/l10n.dart';
import 'item-forecast-hour.dart';

class CardForecastHour extends StatefulWidget {
  HourlyMdl _hourly;
  CardForecastHour(this._hourly);

  @override
  State<CardForecastHour> createState() => _CardForecastHourState();
}

class _CardForecastHourState extends State<CardForecastHour> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  ForecastBloc _forecastBloc = Injector.appInstance.get<ForecastBloc>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocProvider(
      create: (context) => _forecastBloc,
      child: BlocListener<ForecastBloc, ForecastState>(
        listener: (context, state) {
          state.when(
              initial: (){},
              loading: (load){},
              getForecast: (forecast){},
              whatTimeIdNow: (hour){
                setState(() {
                  _itemScrollController.scrollTo(
                    index: int.parse(hour),
                    duration: Duration(milliseconds: 500),
                  );
                });
              },
              uploadedPhrases: (phrases, phrase){},
              error: (errorState){},
          );
        },
        child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextStandard(s.prevision_horas, Colors.white38),
                const SizedBox(height: 16),
                // ListView horizontal
                SizedBox(
                  height: 120,
                  child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.horizontal,
                    itemScrollController: _itemScrollController,
                    itemCount: widget._hourly.temperature2M.length,
                    itemBuilder: (context, index) {
                      _forecastBloc.add(const ForecastEvent.whatTimeIsNow());
                      return Container(
                        width: 100,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: ItemForecastHour(
                            '${widget._hourly.time[index].toHour()}h',
                            widget._hourly.temperature2M[index].toTemp(),
                            widget._hourly.precipitationProbability[index],
                            widget._hourly.cloudCover[index],

                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
