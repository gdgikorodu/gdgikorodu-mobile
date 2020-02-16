import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:gdgikorodu/utils/community.dart';
import 'package:gdgikorodu/utils/image_card.dart';
import 'package:gdgikorodu/utils/tools.dart';

class IncomingEvents extends StatefulWidget {
  @override
  IncomingEventsState createState() => IncomingEventsState();
}

class IncomingEventsState extends State<IncomingEvents> {
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

  void eventsLength() {
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
                    elevation: 0.0,
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints.expand(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                                width: MediaQuery.of(context).size.width * 0.3,
                              ),
                              child: ImageCard(
                                img: Community.home_img,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        events[index]['name'],
                                        style:
                                            Theme.of(context).textTheme.title,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      AnimatedContainer(
                                        duration: Duration(seconds: 1),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.2,
                                        height: 5,
                                        color: Tools
                                            .multiColors[Random().nextInt(4)],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    events[index]['details'],
                                    style: Theme.of(context).textTheme.subtitle,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Date - To be announced',
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
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
