import 'package:flutter/material.dart';
import 'package:gdgikorodu/utils/dev_scaffold.dart';

class ResourcesPage extends StatelessWidget {
  static const String routeName = "/resources";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: Center(
        child: Text('Resources Page'),
      ),
      title: "Resources",
    );
  }
}
