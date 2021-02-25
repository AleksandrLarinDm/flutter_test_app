import 'package:flutter/material.dart';
import 'package:flutter_app/views/OnePicture.dart';

class PictureContainer extends StatelessWidget {
  final String thumbUrl;
  final String rawUrl;
  final String authorName;
  final String pictureName;
  PictureContainer({this.thumbUrl, this.rawUrl, this.authorName, this.pictureName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => OnePicture(rawUrl: rawUrl)));
        },
        leading: Container(
          height: 60,
          width: 60,
          child: Image.network(thumbUrl, fit: BoxFit.cover,),
        ),
        title: Text(
            authorName
        ),
        subtitle: Text(
            pictureName != null ? pictureName : "no name"
        ),
      ),
    );
  }
}
