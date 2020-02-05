import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gdgikorodu/utils/dev_scaffold.dart';
import 'package:gdgikorodu/utils/tools.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsPage extends StatelessWidget {
  static const String routeName = "/events";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: DevScaffold(
        title: "Events",
        tabBar: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Tools.multiColors[Random().nextInt(4)],
          labelStyle: TextStyle(
            fontSize: 12,
          ),
          isScrollable: false,
          tabs: <Widget>[
            Tab(
              child: Text("Upcoming Events"),
              icon: Icon(
                FontAwesomeIcons.book,
                size: 12,
              ),
            ),
            Tab(
              child: Text("Past Events"),
              icon: Icon(
                FontAwesomeIcons.book,
                size: 12,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text('Upcoming Events')),
            Center(child: Text('Past Events'))
          ],
        ),
      ),
    );
  }
}
