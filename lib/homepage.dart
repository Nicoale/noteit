import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _note = 0;

  void _addNote() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(context),
      body: Text("tuko"),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNote,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

_getCustomAppBar(
  BuildContext context
) {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color(0xFF4da872),
            Color(0xFF1E5233),
            Color(0xFF1E524E)
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.pushNamed( context, '/Categories');
              }),
          Text(
            "noteIT",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          IconButton(icon: Icon(Icons.timer), onPressed: () {})
        ],
      ),
    ),
  );
}
