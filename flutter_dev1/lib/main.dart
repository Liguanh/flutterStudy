import 'package:flutter/material.dart';
import 'package:flutter_dev1/components/body.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BodyPage()
    );
  }
}