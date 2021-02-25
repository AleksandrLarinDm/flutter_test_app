import 'package:flutter/material.dart';
import 'package:flutter_app/views/MainView.dart';
import 'package:photo_view/photo_view.dart';

class OnePicture extends StatelessWidget {
  final String rawUrl;
  OnePicture({this.rawUrl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MainView()));
          },
        ),
      ),
      body: Container(
        child: PhotoView(
          imageProvider: NetworkImage(rawUrl),
        ),
      ),
    );
  }
}
