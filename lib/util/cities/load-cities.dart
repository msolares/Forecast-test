import 'package:flutter/cupertino.dart';

import '../../domain/city.dart';
import '../../generated/l10n.dart';

class LoadCities {
  List<City> getCities(BuildContext context) {
    final s = S.of(context);
    return [
      City(s.londres, 51.507222222222, -0.1275),
      City(s.toronto, 43.670277777778, -79.386666666667),
      City(s.singapur, 1.352083, -103.819836),
    ];
  }

}