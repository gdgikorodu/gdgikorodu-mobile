import 'package:flutter/material.dart';
import 'package:gdgikorodu/widgets/image_card.dart';
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
          style: Theme.of(context).textTheme.subtitle,
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

  Widget socialActions(context) => FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.facebookF),
              onPressed: () async {
                await _launchURL(
                    "https://facebook.com/groups/406062210099714/");
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
                    '''mailto:gdgikorodu@gmail.com?subject=Support Needed For GDG-Ikorodu&body={Name: Your Name},Email: Email Address}''';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...communityTexts(context),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ImageCard(
                    img: Community.home_img,
                  ),
                ),
                SizedBox(width: 15.0,),
                Expanded(
                  child: ImageCard(
                    img: Community.wtm_img,
                  ),
                ),
              ],
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
