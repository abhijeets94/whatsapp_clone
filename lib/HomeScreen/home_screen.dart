import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("HomeScreen", style: Theme.of(context).textTheme.headline1),
        ],
      ),
    );
  }
}
