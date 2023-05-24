import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';
import 'package:whatsapp_clone/features/landing/landing_screen.dart';
import 'package:whatsapp_clone/firebase_options.dart';
import 'package:whatsapp_clone/routes.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';

import 'common/widgets/loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: WhatsappClone(),
    ),
  );
}

class WhatsappClone extends ConsumerWidget {
  const WhatsappClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ref.watch(userDataAuthProvider).when(
          data: (user) {
            if (user == null) {
              return const LandingScreen();
            }
            return const MobileLayoutScreen();
          },
          error: (err, trace) {
            return ErrorWidget(err);
          },
          loading: () => const Loader()),
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      onGenerateRoute: AppRoute().router,
    );
  }
}
