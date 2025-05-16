import 'package:go_router/go_router.dart';
import 'package:wheathertest/ui/contact.dart';
import 'package:wheathertest/ui/registre.dart';
import '../../ui/login.dart';
import '../../ui/wather-list.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/weather-tab-lib-view',
      builder: (context, state) {
        return WeatherTabView();
      },
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) {
        return const ContactFormPage();
      },
    ),
    GoRoute(
      path: '/registre',
      builder: (context, state) {
        return const RegistrePage();
      },
    ),
  ],
);
