import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/exp.dart';
//import 'package:gdgikorodu/assets/incomingevents.dart';
import 'package:gdgikorodu/widgets/dev_scaffold.dart';

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
