import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:noteit/homepage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      //navigateAfterSeconds: MyHomePage(),
      title: new Text(
        "PS...",
        style: new TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1E524E),
         ),
      ),

      image: new Image.asset("assets/logo1.png"),
      seconds: 5,
      photoSize: 100.0,
      loaderColor: Color(0xFF84fab3),
      loadingText: Text(
        'Loading...',
        style: TextStyle(
          color: Color(0xFF84fab3),
        ),
      ),

      gradientBackground: LinearGradient(
        // Where the linear gradient begins and ends
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        // Add one stop for each color. Stops should increase from 0 to 1
        stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Color(0xFF84fab3),
          Color(0xFF4da872),
          Color(0xFF1E5233),
          Color(0xFF1E524E),
        ],
      ),
    );
  }
}
