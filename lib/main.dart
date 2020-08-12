import 'package:flutter/material.dart';
import 'package:noteit/menu.dart';
import 'package:noteit/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoteIT',
      theme: ThemeData(
        fontFamily: 'Monaco',
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
      routes: <String, WidgetBuilder> {
    'Categories': (context)=>  Categories(),
    // '/screen2' : (BuildContext context) => new Screen2(),
    // '/screen3' : (BuildContext context) => new Screen3(),
    // '/screen4' : (BuildContext context) => new Screen4()
  },
    );
  }
}

