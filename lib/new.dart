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
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (duration) {
      inAppChrome.open(
        url: Uri.parse("https://music.showextral.com"),
        options: ChromeSafariBrowserClassOptions(
            android: AndroidChromeCustomTabsOptions(
          addDefaultShareMenuItem: false,
          showTitle: false,
          // enableUrlBarHiding: true,
          // instantAppsEnabled: true,
          // keepAliveEnabled: true,
        )),
      );
    });
  }
}
