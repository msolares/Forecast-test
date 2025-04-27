import 'package:flutter/material.dart';

class TextStandard extends StatelessWidget {
  String text;
  Color color;
  TextStandard(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: 25, fontWeight: FontWeight.w300));
  }
}
