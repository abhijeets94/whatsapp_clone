import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});
  static const routeName = "/landing-screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Welcome to Chat app",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                "assets/bg.png",
                color: const Color.fromRGBO(0, 167, 131, 1),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Read our privacy policy. Tap Agree to continue to accept the terms and condition",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 60,
                child: CustomButton(
                    text: "Agree and Continue",
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    })),
          ],
        ),
      ),
    );
  }
}
