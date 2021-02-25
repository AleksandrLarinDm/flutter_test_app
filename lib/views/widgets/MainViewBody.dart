import 'package:flutter/material.dart';
import 'package:flutter_app/models/PictureModel.dart';
import 'package:flutter_app/services/PicturesService.dart';
import 'package:flutter_app/views/widgets/PictureContainer.dart';

class MainViewBody extends StatefulWidget {
  @override
  _MainViewBodyState createState() => _MainViewBodyState();
}

class _MainViewBodyState extends State<MainViewBody> {
  List<Picture> _pics;
  void getPics() {
    PictureService.fetchPics().then((pics){
      setState(() {
        _pics = pics;
      });
    });
  }
  @override
  void initState() {
    getPics();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: null == _pics ? 0 : _pics.length,
      itemBuilder: (BuildContext context, int index){
        Picture picture = _pics[index];
        return PictureContainer(
          authorName: picture.user.name,
          rawUrl: picture.urls.raw,
          pictureName: picture.altDescription,
          thumbUrl: picture.urls.thumb,
        );
      }
    );
  }
}
