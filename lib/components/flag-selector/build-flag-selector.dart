import 'package:flutter/material.dart';
import 'package:wheathertest/components/flag-selector/buid-flag.dart';

class BuildFlagSeletor extends StatelessWidget {
  const BuildFlagSeletor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BuildFlag('es', 'assets/flags/es.png'),
        const SizedBox(width: 8),
        BuildFlag('en', 'assets/flags/us.png'),
      ],
    );;
  }
}
