import 'package:flutter/material.dart';
import 'package:gdgikorodu/utils//dev_scaffold.dart';

class TeamPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: Center(
        child: Text('Team Page'),
      ),
      title: "Team",
    );
  }
}
