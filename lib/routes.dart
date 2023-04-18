import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/HomeScreen/home_screen.dart';
import 'package:whatsapp_clone/LandingScreen/landing_screen.dart';

class AppRoute {
  Route router(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => HomeScreen(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => LandingScreen(), settings: settings);
    }
  }
}
