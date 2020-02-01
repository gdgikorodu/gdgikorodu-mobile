import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
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
            backgroundColor: Colors.redAccent,
            bottom: TabBar(tabs: [
              Container(
                height: 30.0,
                child: Text(
                  'Upcoming',
                ),
              ),
              Container(
                height: 30.0,
                child: Text(
                  'Past',
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
