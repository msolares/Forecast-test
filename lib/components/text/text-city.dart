import 'package:flutter/material.dart';

class Textcity extends StatelessWidget {
  String text;
  Textcity(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700));
  }
}
