import 'package:http/http.dart' as http;
import 'package:gdgikorodu/models/event_data.dart';
import 'dart:convert';

class EventsData {
  List<Event> events = [];

  Future<void> getEvents() async {
    String url =
        "https://us-central1-gdgikorodu-event-details-api.cloudfunctions.net/webApi/api/v1/events";

    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["data"].forEach((element) {
        if (element['name'] != null && element['details'] != null) {
          Event event = Event(
            name: element['name'],
            details: element['details'],
            date: element['date'],
            location: element['location'],
          );
          events.add(event);
        }
      });
    }
  }
}
