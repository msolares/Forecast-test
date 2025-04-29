import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/locale/locale_bloc.dart';
import '../../bloc/locale/locale_event.dart';

class BuildFlag extends StatelessWidget {
  String langCode, assetPath;
  BuildFlag(this.langCode, this.assetPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<LocaleBloc>(context).add(
          ChangeLocale(Locale(langCode)),
        );
      },
      child: CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(assetPath),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
