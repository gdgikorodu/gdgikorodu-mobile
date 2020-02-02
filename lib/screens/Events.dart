import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  static const String routeName = "/events";
  @override
  EventsPageState createState() => new EventsPageState();
}

class EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Events'),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  size: 20,
                ),
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(child: Text('Upcoming'),),
              Tab(child: Text('Past'),),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.mail),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
