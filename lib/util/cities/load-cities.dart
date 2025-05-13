import 'package:flutter/cupertino.dart';

import '../../domain/forecast/city.dart';
import '../../generated/l10n.dart';

class LoadCities {
  List<CityMdl> getCities(BuildContext context) {
    final s = S.of(context);
    return [
      CityMdl(s.londres, 51.507222222222, -0.1275),
      CityMdl(s.toronto, 43.670277777778, -79.386666666667),
      CityMdl(s.singapur, 1.352083, -103.819836),
    ];
  }

}