import 'package:flutter/material.dart';
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
      backgroundColor: Color(0xFF1E1E26),
    );
  }

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(milliseconds: 100), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (_) => WebExampleTwo()));
    // });
  }
}
