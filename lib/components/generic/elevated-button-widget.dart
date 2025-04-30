import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  String _text;
  VoidCallback? _onTap;
  ElevatedButtonWidget(this._text, this._onTap);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF2980B9),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(_text),
    );
  }
}
