import 'package:flutter/material.dart';
import 'package:gdgikorodu/utils//dev_scaffold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialPage extends StatelessWidget {
  static const String routeName = "/socialme";

  _launchURL() async {
    const url = 'https://twitter.com/gdgikorodu';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.twitter),
              onTap: () => _launchURL(),
              title: Text(
                'Twitter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.facebookF),
              onTap: () => _launchURL(),
              title: Text(
                'Facebook',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.meetup),
              onTap: () => _launchURL(),
              title: Text(
                'Meetup',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: ListTile(
              leading: Icon(FontAwesomeIcons.google),
              onTap: () => _launchURL(),
              title: Text(
                'Developers Page',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      title: "Social Me",
    );
  }
}
