import 'package:flutter/material.dart';
import 'package:share/share.dart';

class DevScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;
  final Widget drawer;

  const DevScaffold(
      {Key key, @required this.body, @required this.title, this.tabBar, this.drawer})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            bottom: tabBar != null ? tabBar : null,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lightbulb_outline,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () => Share.share(
                    "Download the Community App and share with your tech friends.\nGDG-Ikorodu App -  http://bit.ly/GDGIkoroduApp"),
                icon: Icon(
                  Icons.share,
                  size: 20,
                ),
              ),
            ],
          ),
          body: body,
          drawer: drawer != null ? drawer : null,
        ),
      ),
    );
  }
}
