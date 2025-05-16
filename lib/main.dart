import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app/app.dart';
import 'database.dart';
import 'bloc/locale/locale_bloc.dart';
import 'di/setup-di.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  const env = String.fromEnvironment('ENV', defaultValue: 'development');
  await dotenv.load(fileName: '.env.$env');
  print("🔐 API_URL: ${dotenv.env['API_URL']}");
  setupDI();
  await Database.init();
  runApp(
    BlocProvider(
      create: (context) => LocaleBloc(),
      child: const MyApp(),
    ),
  );
}

