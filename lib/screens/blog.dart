import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:gdgikorodu/utils/dev_scaffold.dart';

class BlogPage extends StatelessWidget {
  static const String routeName = "/blog";

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: WebviewScaffold(
        url: 'https://www.meetup.com/gdg_ikorodu/',
        hidden: true,
        clearCache: false,
        appCacheEnabled: true,
      ),
      title: "Blog",
    );
  }
}
