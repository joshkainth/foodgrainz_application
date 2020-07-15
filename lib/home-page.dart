import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FoodGrainz - You Cook, We Deliver",
      theme: ThemeData(
        primaryColor: Colors.red[500],
        primaryColorLight: Colors.yellow[400],
      ),
    );
  }
}
