import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  void _addNote() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget bigCircle = new Container(
      width: 350.0,
      height: 350.0,
      decoration: new BoxDecoration(
        color: Color(0xFF1E5233),
        shape: BoxShape.circle,
      ),
    );
    return Scaffold(
      appBar: _getCustomAppBar(context),
      body: Scaffold(
        body: Center(
          child: new Stack(
            children: <Widget>[
              bigCircle,
              new Positioned(
                child: new CircleButton(onTap: () => print("Cool"), iconData: Icons.celebration),
                top: 5.0,
                left: 125.0,
              ),
              new Positioned(
                child: CircleButton(onTap: _addNote, iconData: Icons.add),
                top: 215.0,
                left: 215.0,
              ),
              new Positioned(
                child: new CircleButton(
                    onTap: () => print("Cool"), iconData: Icons.today_outlined),
                top: 125.0,
                left: 5.0,
              ),
              new Positioned(
                child: new CircleButton(
                    onTap: () => print("Cool"), iconData: Icons.shopping_bag),
                top: 90.0,
                right: 10.0,
              ),
              new Positioned(
                child: new CircleButton(
                    onTap: () => print("Cool"), iconData: Icons.meeting_room),
                top: 245.0,
                left: 95.0,
              ),
              new Positioned(
                child: new CircleButton(
                    onTap: () => print("Cool"), iconData: Icons.settings_applications,),
                top: 125.0,
                left: 125.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({Key key, this.onTap, this.iconData, Widget child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 95.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.black,
        ),
      ),
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
                Navigator.pushNamed(context, '/Categoriess');
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
