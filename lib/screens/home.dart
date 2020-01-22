import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/MyDrawer.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:gdgikorodu/screens/gdghome.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.star),
              onPressed: () {
                _launchURL();
              }),
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                Share.share(
                    'check out my wa status downloader https://bit.ly/wa_status_downloader',
                    subject: 'Look what I made!');
              }),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: GdgHome(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.mail),
        onPressed: () {},
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
