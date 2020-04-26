import 'package:flutter/material.dart';
import 'package:gdgikorodu/network/eventdata.dart';
import 'package:gdgikorodu/widgets/event_tile.dart';

class Events extends StatefulWidget {
  @override
  EventsState createState() => EventsState();
}

class EventsState extends State<Events> {
  List eventslist;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
  }

  void fetchEvents() async {
    EventsData events = EventsData();
    await events.getEvents();
    eventslist = events.events;
    setState(() {
      _loading = false;
    });
    print('fetching results...');
    print(eventslist);
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            child: ListView.builder(
                itemCount: eventslist == null ? 0 : eventslist.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return EventTile(
                    name: eventslist[index].name ?? "",
                    imgeAssetPath: 'assets/images/gdg-logo.jpg',
                    date: eventslist[index].date ?? "",
                    location: eventslist[index].location ?? "",
                  );
                }),
          );
  }
}
