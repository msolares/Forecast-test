import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../domain/daily.dart';
import '../../generated/l10n.dart';
import '../text/text-standard.dart';
import 'item-next-day.dart';

class CardNextDays extends StatelessWidget {
  Daily _daily;
  CardNextDays(this._daily);

  final ItemScrollController _itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Card(
      color: Colors.transparent,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextStandard(s.prevision_proximos_dias, Colors.white38),
            const SizedBox(height: 16),
            // ListView horizontal
            SizedBox(
              height: 200,
              child: ScrollablePositionedList.builder(
                scrollDirection: Axis.vertical,
                itemScrollController: _itemScrollController,
                itemCount: _daily.time.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: ItemNextDays(
                          _daily.time[index],
                          _daily.temperature2MMin[index],
                          _daily.temperature2MMax[index],
                          _daily.precipitationProbabilityMax[index],
                          _daily.cloudCoverMean[index]
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
