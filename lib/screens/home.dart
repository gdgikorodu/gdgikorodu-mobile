import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gdgikorodu/screens/gdghome.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  static const String routeName = "/";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _launchURL() async {
    const url = 'https://github.com/Mastersam07/gdgikorodu-mobile';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.star,
                size: 20,
              ),
              onPressed: () {
                _launchURL();
              }),
          IconButton(
              icon: Icon(
                Icons.share,
                size: 20,
              ),
              onPressed: () {
                Share.share(
                    'check out gdg ikorodu mobile app https://bit.ly/wa_status_downloader',
                    subject: 'GDG IKORODU MOBILE');
              }),
        ],
      ),
      body: GdgHome(),
    );
  }
}
