import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class DevScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget tabBar;

  _launchURL() async {
    const url = 'https://github.com/Mastersam07/gdgikorodu-mobile';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  const DevScaffold(
      {Key key, @required this.body, @required this.title, this.tabBar})
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
                onPressed: () => _launchURL(),
                icon: Icon(
                  Icons.star,
                  size: 20,
                ),
              ),
              IconButton(
                onPressed: () => Share.share(
                    "Download the DevFest App and share with your tech friends.\nDevFest App -  http://bit.ly/ikDevFestApp"),
                icon: Icon(
                  Icons.share,
                  size: 20,
                ),
              ),
            ],
          ),
          body: body,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.mail),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
