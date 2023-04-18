import 'package:flutter/material.dart';
import 'package:whatsapp_clone/HomeScreen/home_screen.dart';

class LandingScreen extends StatelessWidget {
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
                style: Theme.of(context).textTheme.headline1,
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
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: const Text(
                  "Agree and Continue",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
