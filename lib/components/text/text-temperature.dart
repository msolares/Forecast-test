import 'package:flutter/material.dart';

class TextTemperature extends StatelessWidget {
  String text;
  TextTemperature(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 55, fontWeight: FontWeight.w100));
  }
}
