import 'dart:convert';

List<Picture> pictureFromJson(String str) => List<Picture>.from(json.decode(str).map((x) => Picture.fromJson(x)));

String pictureToJson(List<Picture> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Picture {
  Picture({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.categories,
    this.likes,
    this.likedByUser,
    this.currentUserCollections,
    this.user,
  });

  String id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic promotedAt;
  int width;
  int height;
  String color;
  String blurHash;
  dynamic description;
  String altDescription;
  Urls urls;
  PictureLinks links;
  List<dynamic> categories;
  int likes;
  bool likedByUser;
  List<dynamic> currentUserCollections;
  User user;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
    id: json["id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    promotedAt: json["promoted_at"],
    width: json["width"],
    height: json["height"],
    color: json["color"],
    blurHash: json["blur_hash"],
    description: json["description"],
    altDescription: json["alt_description"],
    urls: Urls.fromJson(json["urls"]),
    links: PictureLinks.fromJson(json["links"]),
    categories: List<dynamic>.from(json["categories"].map((x) => x)),
    likes: json["likes"],
    likedByUser: json["liked_by_user"],
    currentUserCollections: List<dynamic>.from(json["current_user_collections"].map((x) => x)),
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "promoted_at": promotedAt,
    "width": width,
    "height": height,
    "color": color,
    "blur_hash": blurHash,
    "description": description,
    "alt_description": altDescription,
    "urls": urls.toJson(),
    "links": links.toJson(),
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "likes": likes,
    "liked_by_user": likedByUser,
    "current_user_collections": List<dynamic>.from(currentUserCollections.map((x) => x)),
    "user": user.toJson(),
  };
}

class PictureLinks {
  PictureLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });

  String self;
  String html;
  String download;
  String downloadLocation;

  factory PictureLinks.fromJson(Map<String, dynamic> json) => PictureLinks(
    self: json["self"],
    html: json["html"],
    download: json["download"],
    downloadLocation: json["download_location"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
    "html": html,
    "download": download,
    "download_location": downloadLocation,
  };
}

class User {
  User({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.acceptedTos,
  });

  String id;
  DateTime updatedAt;
  String username;
  String name;
  String firstName;
  dynamic lastName;
  String twitterUsername;
  String portfolioUrl;
  String bio;
  dynamic location;
  UserLinks links;
  ProfileImage profileImage;
  String instagramUsername;
  int totalCollections;
  int totalLikes;
  int totalPhotos;
  bool acceptedTos;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    updatedAt: DateTime.parse(json["updated_at"]),
    username: json["username"],
    name: json["name"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    twitterUsername: json["twitter_username"],
    portfolioUrl: json["portfolio_url"],
    bio: json["bio"],
    location: json["location"],
    links: UserLinks.fromJson(json["links"]),
    profileImage: ProfileImage.fromJson(json["profile_image"]),
    instagramUsername: json["instagram_username"],
    totalCollections: json["total_collections"],
    totalLikes: json["total_likes"],
    totalPhotos: json["total_photos"],
    acceptedTos: json["accepted_tos"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "updated_at": updatedAt.toIso8601String(),
    "username": username,
    "name": name,
    "first_name": firstName,
    "last_name": lastName,
    "twitter_username": twitterUsername,
    "portfolio_url": portfolioUrl,
    "bio": bio,
    "location": location,
    "links": links.toJson(),
    "profile_image": profileImage.toJson(),
    "instagram_username": instagramUsername,
    "total_collections": totalCollections,
    "total_likes": totalLikes,
    "total_photos": totalPhotos,
    "accepted_tos": acceptedTos,
  };
}

class UserLinks {
  UserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });

  String self;
  String html;
  String photos;
  String likes;
  String portfolio;
  String following;
  String followers;

  factory UserLinks.fromJson(Map<String, dynamic> json) => UserLinks(
    self: json["self"],
    html: json["html"],
    photos: json["photos"],
    likes: json["likes"],
    portfolio: json["portfolio"],
    following: json["following"],
    followers: json["followers"],
  );

  Map<String, dynamic> toJson() => {
    "self": self,
    "html": html,
    "photos": photos,
    "likes": likes,
    "portfolio": portfolio,
    "following": following,
    "followers": followers,
  };
}

class ProfileImage {
  ProfileImage({
    this.small,
    this.medium,
    this.large,
  });

  String small;
  String medium;
  String large;

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
    small: json["small"],
    medium: json["medium"],
    large: json["large"],
  );

  Map<String, dynamic> toJson() => {
    "small": small,
    "medium": medium,
    "large": large,
  };
}

class Urls {
  Urls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
  });

  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  factory Urls.fromJson(Map<String, dynamic> json) => Urls(
    raw: json["raw"],
    full: json["full"],
    regular: json["regular"],
    small: json["small"],
    thumb: json["thumb"],
  );

  Map<String, dynamic> toJson() => {
    "raw": raw,
    "full": full,
    "regular": regular,
    "small": small,
    "thumb": thumb,
  };
}
