import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/screens/LandingScreen/landing_screen.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/routes.dart';
import 'package:whatsapp_clone/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const WhatsappClone());
}

class WhatsappClone extends StatelessWidget {
  const WhatsappClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingScreen(),
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      onGenerateRoute: AppRoute().router,
    );
  }
}
