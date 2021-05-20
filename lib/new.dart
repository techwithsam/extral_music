import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:showextral_music/webpage.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final WebExampleFour inAppChrome = WebExampleFour();
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (duration) {
      inAppChrome.open(
          url: Uri.parse("https://music.showextral.com"),
          options: ChromeSafariBrowserClassOptions(
              android: AndroidChromeCustomTabsOptions(
                  addDefaultShareMenuItem: false,
                  toolbarBackgroundColor: Color(0xFF1E1E26)),
              ios: IOSSafariOptions()));
    });
  }
}
