// To parse this JSON data, do
//
//     final detailUser = detailUserFromJson(jsonString);

import 'dart:convert';

DetailUser detailUserFromJson(String str) =>
    DetailUser.fromJson(json.decode(str));

String detailUserToJson(DetailUser data) => json.encode(data.toJson());

class DetailUser {
  DetailUser({
    this.data,
    this.support,
  });

  Data data;
  Support support;

  factory DetailUser.fromJson(Map<String, dynamic> json) => DetailUser(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        support:
            json["support"] == null ? null : Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data.toJson(),
        "support": support == null ? null : support.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        email: json["email"] == null ? null : json["email"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        avatar: json["avatar"] == null ? null : json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "email": email == null ? null : email,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "avatar": avatar == null ? null : avatar,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String url;
  String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"] == null ? null : json["url"],
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "text": text == null ? null : text,
      };
}
