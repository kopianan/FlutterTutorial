import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Column Row",
    home: new HomePage(),
  ));
}
 
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Tadaaaaa!!!"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              icon: Icons.home,
              text: "Home",
            ),
            new MyCard(
              icon: Icons.people,
              text: "People",
            ),
            new MyCard(
              icon: Icons.schedule,
              text: "Schedule",
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              icon,
              size: 50.0,
              color: Colors.blue,
            ),
            new Text(
              text,
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}