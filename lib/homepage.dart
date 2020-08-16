import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var newFormat = DateFormat("dd-MM-yyyy");
    String updateDt = newFormat.format(now);
    return Scaffold(
      appBar: _getCustomAppBar(context),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Today:${now.hour}:${now.minute},${updateDt}",
              style: TextStyle(fontSize: 15.0, letterSpacing: 2.0),
              //fetch the days date
            ),
          ],
        ),
      ),
      //list tiles for the days events
    );
  }
}

_getCustomAppBar(BuildContext context) {
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
                Navigator.pushNamed(context, '/Categories');
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

// class WorldTime {
//   String location;
//   String time;
//   String date;
//   String url;

//   WorldTime({this.location, this.date, this.url});

//   Future<void> getTime() async {
//     try {
//       http.Response response =
//           await http.get("http://worldtimeapi.org/api/timezone/Africa");
//       Map data = jsonDecode(response.body);

//       String datetime = data['datetime'];
//       String offset = data['utc_offset'].substring(1, 3);

//       DateTime now = DateTime.parse(datetime);
//       now = now.add(Duration(hours: int.parse(offset)));

//       time = DateFormat.jm().format as String;
//     } catch (e) {
//       print('caught error:$e');
//       time = 'could not get time data';
//     }
//   }
// }
