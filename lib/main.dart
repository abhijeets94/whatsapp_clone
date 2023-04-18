import 'package:flutter/material.dart';
import 'package:whatsapp_clone/LandingScreen/landing_screen.dart';
import 'package:whatsapp_clone/routes.dart';
import 'package:whatsapp_clone/theme.dart';

void main() {
  runApp(const WhatsappClone());
}

class WhatsappClone extends StatelessWidget {
  const WhatsappClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingScreen(),
      theme: CustomTheme().theme,
      onGenerateRoute: AppRoute().router,
    );
  }
}
