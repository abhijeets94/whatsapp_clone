import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/otp_screen.dart';
import 'package:whatsapp_clone/common/widgets/error.dart';

class AppRoute {
  Route router(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => LoginScreen(), settings: settings);
      case OTPScreen.routeName:
        return MaterialPageRoute(
            builder: (_) =>
                OTPScreen(verificationId: settings.arguments as String),
            settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) =>
                const ErrorScreen(error: 'This page doesn\'t exits'),
            settings: settings);
    }
  }
}
