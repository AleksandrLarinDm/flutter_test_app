import 'package:flutter_app/models/PictureModel.dart';
import 'package:http/http.dart' as http;

class PictureService {
  static Future<List<Picture>> fetchPics() async {
    final response = await http.get("https://api.unsplash.com/photos/?client_id=cf49c08b444ff4cb9e4d126b7e9f7513ba1ee58de7906e4360afc1a33d1bf4c0", headers: {"Accept" : "application/json"});
    try {
      if (200 == response.statusCode) {
        final List<Picture> pictures = pictureFromJson(response.body);
        print(response.statusCode);
        return pictures;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}