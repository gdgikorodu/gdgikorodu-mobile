import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  @override
  TeamPageState createState() => new TeamPageState();
}

class TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Here'),
      ),
      body: new Container(
        padding: EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Hello World!')
            ],
          ),
        ),
      ),
    );
  }

}