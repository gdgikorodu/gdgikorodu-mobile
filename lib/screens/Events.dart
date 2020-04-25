import 'package:flutter/material.dart';
import 'package:gdgikorodu/assets/exp.dart';
//import 'package:gdgikorodu/assets/incomingevents.dart';
import 'package:gdgikorodu/utils/dev_scaffold.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = "/events";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      title: "Events",
      body: Events(),
//        body: IncomingEvents(),
    );
//    );
  }
}
