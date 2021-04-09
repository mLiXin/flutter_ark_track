import 'package:flutter/material.dart';
import 'package:flutter_ark_track/module/home_page.dart';

void main() {
  runApp(ArkTrackApp());
}

class ArkTrackApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ark Track Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}