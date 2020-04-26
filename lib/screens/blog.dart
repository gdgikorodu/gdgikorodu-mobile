import 'package:flutter/material.dart';
import 'package:gdgikorodu/widgets/dev_scaffold.dart';

class BlogPage extends StatelessWidget {
  static const String routeName = "/blog";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: Center(
        child: Text('Coming Soon'),
      ),
      title: "Blog",
    );
  }
}
