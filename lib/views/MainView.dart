import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/MainViewBody.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo fetch"),
      ),
      body: Container(
        height: double.infinity,
        child: MainViewBody(),
      ),
    );
  }
}
