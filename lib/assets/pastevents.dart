import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PastEvents extends StatefulWidget {
  @override
  _PastEventsState createState() => _PastEventsState();
}

class _PastEventsState extends State<PastEvents> {
  final String url =
      'https://us-central1-gdgikorodu-event-details-api.cloudfunctions.net/webApi/api/v1/events';
  List events;

  @override
  void initState() {
    super.initState();
    this.fetchPost();
  }

  Future<String> fetchPost() async {
    final response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      events = convertDataToJson['data'];
    });

    return "Success";
  }

  void eventsLength(){
    print(events.length);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        itemCount: events == null ? 0 : events.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                    child: new Container(
                      child: new Text(events[index]['event']['name']),
                      padding: EdgeInsets.all(20.0),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
