import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:wheathertest/domain/do-you-know.dart';

import 'local-provider.dart';

class FraseLoader {
  final LocaleProvider localeProvider;
  FraseLoader(this.localeProvider);
  Future<List<DoYouKnow>> load(String lg) async {
    final jsonString = await rootBundle.loadString('assets/json/frases-$lg.json');
    return compute(_parseFrases, jsonString);
  }
}

List<DoYouKnow> _parseFrases(String jsonStr) {
  final data = json.decode(jsonStr);
  List<String> d = List<String>.from(data);
  List<DoYouKnow> doyouknow = [];
  for (String f in d){
    DoYouKnow d = DoYouKnow(texto: f);
    doyouknow.add(d);
  }
  return doyouknow;
}
