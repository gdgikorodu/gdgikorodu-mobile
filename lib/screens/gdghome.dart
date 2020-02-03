import 'package:flutter/material.dart';
import 'package:gdgikorodu/screens/Events.dart';
import 'package:gdgikorodu/screens/Resources.dart';
import 'package:gdgikorodu/screens/blog.dart';
import 'package:gdgikorodu/screens/register.dart';
import 'package:gdgikorodu/screens/sponsors_page.dart';
import 'package:gdgikorodu/screens/team_page.dart';
import 'package:gdgikorodu/utils/image_card.dart';
import 'package:gdgikorodu/utils/community.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GdgHome extends StatelessWidget {
  static const String routeName = "/home";
  List<Widget> communityTexts(context) => [
    Text(
      Community.welcomeText,
      style: Theme.of(context).textTheme.headline,
      textAlign: TextAlign.center,
    ),
    SizedBox(
      height: 10,
    ),
    Text(
      Community.descText,
      style: Theme.of(context).textTheme.caption,
      textAlign: TextAlign.center,
    ),
  ];

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget actions(context) => Wrap(
    alignment: WrapAlignment.center,
    spacing: 10.0,
    children: <Widget>[
      RaisedButton(
        child: Text("Blog"),
        shape: StadiumBorder(),
        color: Colors.red,
        colorBrightness: Brightness.dark,
        onPressed: () => Navigator.pushNamed(context, BlogPage.routeName),
      ),
      RaisedButton(
        child: Text("Events"),
        shape: StadiumBorder(),
        color: Colors.green,
        colorBrightness: Brightness.dark,
        onPressed: () =>
            Navigator.pushNamed(context, EventsPage.routeName),
      ),
      RaisedButton(
        child: Text("Team"),
        shape: StadiumBorder(),
        color: Colors.orange,
        colorBrightness: Brightness.dark,
        onPressed: () =>
            Navigator.pushNamed(context, TeamPage.routeName),
      ),
      RaisedButton(
        child: Text("Sponsors"),
        shape: StadiumBorder(),
        color: Colors.purple,
        colorBrightness: Brightness.dark,
        onPressed: () => Navigator.pushNamed(context, SponsorPage.routeName),
      ),
      RaisedButton(
        child: Text("Resources"),
        shape: StadiumBorder(),
        color: Colors.brown,
        colorBrightness: Brightness.dark,
        onPressed: () => Navigator.pushNamed(context, ResourcesPage.routeName),
      ),
      RaisedButton(
        child: Text("Join Us"),
        shape: StadiumBorder(),
        color: Colors.blue,
        colorBrightness: Brightness.dark,
        onPressed: () => Navigator.pushNamed(context, RegisterPage.routeName),
      ),
    ],
  );

  Widget newActions(context) => Wrap(
    alignment: WrapAlignment.center,
    spacing: 20.0,
    runSpacing: 20.0,
    children: <Widget>[
      ActionCard(
        icon: Icons.schedule,
        color: Colors.red,
        title: Community.blog_text,
        onPressed: () => Navigator.pushNamed(context, BlogPage.routeName),
      ),
      ActionCard(
        icon: Icons.person,
        color: Colors.green,
        title: Community.events_text,
        onPressed: () =>
            Navigator.pushNamed(context, EventsPage.routeName),
      ),
      ActionCard(
        icon: Icons.people,
        color: Colors.amber,
        title: Community.team_text,
        onPressed: () => Navigator.pushNamed(context, TeamPage.routeName),
      ),
      ActionCard(
        icon: Icons.attach_money,
        color: Colors.purple,
        title: Community.sponsor_text,
        onPressed: () =>
            Navigator.pushNamed(context, SponsorPage.routeName),
      ),
      ActionCard(
        icon: Icons.question_answer,
        color: Colors.brown,
        title: Community.resources_text,
        onPressed: () => Navigator.pushNamed(context, ResourcesPage.routeName),
      ),
      ActionCard(
        icon: Icons.map,
        color: Colors.blue,
        title: Community.register_text,
        onPressed: () => Navigator.pushNamed(context, RegisterPage.routeName),
      )
    ],
  );

  Widget socialActions(context) => FittedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          icon: Icon(FontAwesomeIcons.facebookF),
          onPressed: () async {
            await _launchURL("https://facebook.com/groups/406062210099714/");
          },
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.twitter),
          onPressed: () async {
            await _launchURL("https://twitter.com/gdgikorodu");
          },
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.meetup),
          onPressed: () async {
            await _launchURL("https://www.meetup.com/gdg_ikorodu/");
          },
        ),
        IconButton(
          icon: Icon(FontAwesomeIcons.envelope),
          onPressed: () async {
            var emailUrl =
            '''mailto:gdgikorodu@gmail.com?subject=Support Needed For DevFest'19&body={Name: Your Name},Email: Email Address}''';
            var out = Uri.encodeFull(emailUrl);
            await _launchURL(out);
          },
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
              img: Community.home_img,
            ),
            SizedBox(
              height: 20,
            ),
            ...communityTexts(context),
            SizedBox(
              height: 20,
            ),
            newActions(context),
            SizedBox(
              height: 20,
            ),
            socialActions(context),
            SizedBox(
              height: 20,
            ),
            Text(
              Community.app_version,
              style: Theme.of(context).textTheme.caption.copyWith(fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  final Function onPressed;
  final IconData icon;
  final String title;
  final Color color;

  const ActionCard({Key key, this.onPressed, this.icon, this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onPressed,
      child: Ink(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              blurRadius: 10,
              spreadRadius: 5,
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.title.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
