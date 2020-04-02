import 'package:flutter/material.dart';
import 'package:flutter_architectures_sample/resources/strings.dart';
import 'package:flutter_architectures_sample/screen/list/social_media_list_screen.dart';
import 'package:flutter_architectures_sample/screen/routes.dart';

class StartScreen extends StatefulWidget {
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.socialMediaListTitle),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.favourites);
            },
          )
        ],
      ),
      body: SocialMediaListScreen(),
    );
  }
}
