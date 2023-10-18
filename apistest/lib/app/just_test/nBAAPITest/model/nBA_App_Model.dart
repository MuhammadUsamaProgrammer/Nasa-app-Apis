// To parse this JSON data, do
//
//     final nbaApp = nbaAppFromJson(jsonString);

// import 'dart:convert';

// NbaApp nbaAppFromJson(String str) => NbaApp.fromJson(json.decode(str));

// String nbaAppToJson(NbaApp data) => json.encode(data.toJson());

class NbaApp {
  List<Datum> data;
  Meta meta;

  NbaApp({
    required this.data,
    required this.meta,
  });

  factory NbaApp.fromJson(Map<String, dynamic> json) => NbaApp(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Datum {
  int id;
  String firstName;
  int? heightFeet;
  int? heightInches;
  String lastName;
  String position;
  Team team;
  int? weightPounds;

  Datum({
    required this.id,
    required this.firstName,
    required this.heightFeet,
    required this.heightInches,
    required this.lastName,
    required this.position,
    required this.team,
    required this.weightPounds,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        firstName: json["first_name"],
        heightFeet: json["height_feet"],
        heightInches: json["height_inches"],
        lastName: json["last_name"],
        position: json["position"],
        team: Team.fromJson(json["team"]),
        weightPounds: json["weight_pounds"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "height_feet": heightFeet,
        "height_inches": heightInches,
        "last_name": lastName,
        "position": position,
        "team": team.toJson(),
        "weight_pounds": weightPounds,
      };
}

class Team {
  int id;
  String abbreviation;
  String city;
  Conference conference;
  String division;
  String fullName;
  String name;

  Team({
    required this.id,
    required this.abbreviation,
    required this.city,
    required this.conference,
    required this.division,
    required this.fullName,
    required this.name,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        abbreviation: json["abbreviation"],
        city: json["city"],
        conference: conferenceValues.map[json["conference"]]!,
        division: json["division"],
        fullName: json["full_name"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "abbreviation": abbreviation,
        "city": city,
        "conference": conferenceValues.reverse[conference],
        "division": division,
        "full_name": fullName,
        "name": name,
      };
}

enum Conference { EAST, WEST }

final conferenceValues =
    EnumValues({"East": Conference.EAST, "West": Conference.WEST});

class Meta {
  int totalPages;
  int currentPage;
  int nextPage;
  int perPage;
  int totalCount;

  Meta({
    required this.totalPages,
    required this.currentPage,
    required this.nextPage,
    required this.perPage,
    required this.totalCount,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        totalPages: json["total_pages"],
        currentPage: json["current_page"],
        nextPage: json["next_page"],
        perPage: json["per_page"],
        totalCount: json["total_count"],
      );

  Map<String, dynamic> toJson() => {
        "total_pages": totalPages,
        "current_page": currentPage,
        "next_page": nextPage,
        "per_page": perPage,
        "total_count": totalCount,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
