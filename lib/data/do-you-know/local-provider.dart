import 'dart:ui';

class LocaleProvider {
  final Locale Function() getCurrentLocale;
  LocaleProvider({required this.getCurrentLocale});
}