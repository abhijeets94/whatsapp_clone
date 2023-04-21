import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/common/error.dart';
import 'package:whatsapp_clone/screens/HomeScreen/home_screen.dart';

class AppRoute {
  Route router(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => HomeScreen(), settings: settings);
      case LoginScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => LoginScreen(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const ErrorScreen(error: 'This page doesn\'t exits'),
            settings: settings);
    }
  }
}
