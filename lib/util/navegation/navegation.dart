import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  static void goTo(BuildContext context, String route) {
    context.push(route);
  }

  static void goToReplacement(BuildContext context, String route) {
    context.go(route);
  }

  static void back(BuildContext context) {
    context.pop();
  }
}
