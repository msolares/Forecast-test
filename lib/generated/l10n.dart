// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Sign In`
  String get button {
    return Intl.message('Sign In', name: 'button', desc: '', args: []);
  }

  /// `London`
  String get londres {
    return Intl.message('London', name: 'londres', desc: '', args: []);
  }

  /// `Tokyo`
  String get tokio {
    return Intl.message('Tokyo', name: 'tokio', desc: '', args: []);
  }

  /// `Singapore`
  String get singapur {
    return Intl.message('Singapore', name: 'singapur', desc: '', args: []);
  }

  /// `Feels like`
  String get sensacion_termina {
    return Intl.message(
      'Feels like',
      name: 'sensacion_termina',
      desc: '',
      args: [],
    );
  }

  /// `Hourly forecast`
  String get prevision_horas {
    return Intl.message(
      'Hourly forecast',
      name: 'prevision_horas',
      desc: '',
      args: [],
    );
  }

  /// `Forecast for the next days`
  String get prevision_proximos_dias {
    return Intl.message(
      'Forecast for the next days',
      name: 'prevision_proximos_dias',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get hoy {
    return Intl.message('Today', name: 'hoy', desc: '', args: []);
  }

  /// `Monday`
  String get lunes {
    return Intl.message('Monday', name: 'lunes', desc: '', args: []);
  }

  /// `Tuesday`
  String get martes {
    return Intl.message('Tuesday', name: 'martes', desc: '', args: []);
  }

  /// `Wednesday`
  String get miercoles {
    return Intl.message('Wednesday', name: 'miercoles', desc: '', args: []);
  }

  /// `Thursday`
  String get jueves {
    return Intl.message('Thursday', name: 'jueves', desc: '', args: []);
  }

  /// `Friday`
  String get viernes {
    return Intl.message('Friday', name: 'viernes', desc: '', args: []);
  }

  /// `Saturday`
  String get sabado {
    return Intl.message('Saturday', name: 'sabado', desc: '', args: []);
  }

  /// `Sunday`
  String get domingo {
    return Intl.message('Sunday', name: 'domingo', desc: '', args: []);
  }

  /// `Form submitted`
  String get formularioenviado {
    return Intl.message(
      'Form submitted',
      name: 'formularioenviado',
      desc: '',
      args: [],
    );
  }

  /// `All data has been successfully validated.`
  String get formularioenviadoexito {
    return Intl.message(
      'All data has been successfully validated.',
      name: 'formularioenviadoexito',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get aceptar {
    return Intl.message('OK', name: 'aceptar', desc: '', args: []);
  }

  /// `Contact Form`
  String get formularioContacto {
    return Intl.message(
      'Contact Form',
      name: 'formularioContacto',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get nombre {
    return Intl.message('Name', name: 'nombre', desc: '', args: []);
  }

  /// `Name is required`
  String get nombreRequerido {
    return Intl.message(
      'Name is required',
      name: 'nombreRequerido',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get fechaNacimiento {
    return Intl.message(
      'Date of Birth',
      name: 'fechaNacimiento',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth is required`
  String get fechaRequerida {
    return Intl.message(
      'Date of birth is required',
      name: 'fechaRequerida',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get ciudad {
    return Intl.message('City', name: 'ciudad', desc: '', args: []);
  }

  /// `City is required`
  String get ciudadRequerida {
    return Intl.message(
      'City is required',
      name: 'ciudadRequerida',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Email is required`
  String get emailRequerido {
    return Intl.message(
      'Email is required',
      name: 'emailRequerido',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get emailInvalido {
    return Intl.message(
      'Invalid email',
      name: 'emailInvalido',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get telefono {
    return Intl.message('Phone', name: 'telefono', desc: '', args: []);
  }

  /// `Phone number is required`
  String get telefonoRequerido {
    return Intl.message(
      'Phone number is required',
      name: 'telefonoRequerido',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get telefonoInvalido {
    return Intl.message(
      'Invalid phone number',
      name: 'telefonoInvalido',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get enviar {
    return Intl.message('Submit', name: 'enviar', desc: '', args: []);
  }

  /// `¿Aun no tienes cuenta? Regístrate`
  String get aunnotienescuenta {
    return Intl.message(
      '¿Aun no tienes cuenta? Regístrate',
      name: 'aunnotienescuenta',
      desc: '',
      args: [],
    );
  }

  /// `Registro`
  String get registro {
    return Intl.message('Registro', name: 'registro', desc: '', args: []);
  }

  /// `Regístrate`
  String get registrate {
    return Intl.message('Regístrate', name: 'registrate', desc: '', args: []);
  }

  /// `¿Ya tienes cuenta?, inicia sesión`
  String get yatinescuenta {
    return Intl.message(
      '¿Ya tienes cuenta?, inicia sesión',
      name: 'yatinescuenta',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
