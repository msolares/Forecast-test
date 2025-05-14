import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:wheathertest/domain/entities/forecast/do-you-know.dart';

import '../../do-you-know/local-provider.dart';

class DoYouKnowDataSources {
  final LocaleProvider localeProvider;
  DoYouKnowDataSources(this.localeProvider);
  Future<List<DoYouKnowMdl>> load(String lg) async {
    final jsonString = await rootBundle.loadString('assets/json/frases-$lg.json');
    return compute(_parseFrases, jsonString);
  }
}

List<DoYouKnowMdl> _parseFrases(String jsonStr) {
  final data = json.decode(jsonStr);
  List<String> d = List<String>.from(data);
  List<DoYouKnowMdl> doyouknow = [];
  for (String f in d){
    DoYouKnowMdl d = DoYouKnowMdl(f);
    doyouknow.add(d);
  }
  return doyouknow;
}