// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

class User {
  User({
    this.data,
    this.support,
  });

  final Data data;
  final Support support;

  User copyWith({
    Data data,
    Support support,
  }) =>
      User(
        data: data ?? this.data,
        support: support ?? this.support,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
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

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  Data copyWith({
    int id,
    String email,
    String firstName,
    String lastName,
    String avatar,
  }) =>
      Data(
        id: id ?? this.id,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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

  final String url;
  final String text;

  Support copyWith({
    String url,
    String text,
  }) =>
      Support(
        url: url ?? this.url,
        text: text ?? this.text,
      );

  factory Support.fromRawJson(String str) => Support.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"] == null ? null : json["url"],
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "text": text == null ? null : text,
      };
}
