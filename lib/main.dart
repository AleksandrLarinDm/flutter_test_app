import 'package:flutter/material.dart';
import 'package:flutter_app/views/MainView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainView()
    );
  }
}