import 'package:flutter/material.dart';
import 'package:kora/view/MyHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Just a Title',
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
