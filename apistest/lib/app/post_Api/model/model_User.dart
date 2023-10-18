// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users> usersFromJson(String str) =>
    List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
  String id;
  String name;
  String description;
  int price;
  int v;

  Users({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.v,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
        "price": price,
        "__v": v,
      };
}
