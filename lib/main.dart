import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:showextral_music/new.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShowExtral Music',
      theme: ThemeData(primaryColor: Color(0xFF1E1E26)),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
