class NasaApp {
  List<Photo> photos;

  NasaApp({
    required this.photos,
  });

  factory NasaApp.fromJson(Map<String, dynamic> json) => NasaApp(
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
      };
}

class Photo {
  int id;
  int sol;
  PhotoCamera camera;
  String imgSrc;
  DateTime earthDate;
  Rover rover;

  Photo({
    required this.id,
    required this.sol,
    required this.camera,
    required this.imgSrc,
    required this.earthDate,
    required this.rover,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        id: json["id"],
        sol: json["sol"],
        camera: PhotoCamera.fromJson(json["camera"]),
        imgSrc: json["img_src"],
        earthDate: DateTime.parse(json["earth_date"]),
        rover: Rover.fromJson(json["rover"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sol": sol,
        "camera": camera.toJson(),
        "img_src": imgSrc,
        "earth_date":
            "${earthDate.year.toString().padLeft(4, '0')}-${earthDate.month.toString().padLeft(2, '0')}-${earthDate.day.toString().padLeft(2, '0')}",
        "rover": rover.toJson(),
      };
}

class PhotoCamera {
  int id;
  String name;
  int roverId;
  String fullName;

  PhotoCamera({
    required this.id,
    required this.name,
    required this.roverId,
    required this.fullName,
  });

  factory PhotoCamera.fromJson(Map<String, dynamic> json) => PhotoCamera(
        id: json["id"],
        name: json["name"],
        roverId: json["rover_id"],
        fullName: json["full_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "rover_id": roverId,
        "full_name": fullName,
      };
}

class Rover {
  int id;
  String name;
  DateTime landingDate;
  DateTime launchDate;
  String status;
  int maxSol;
  DateTime maxDate;
  int totalPhotos;
  List<CameraElement> cameras;

  Rover({
    required this.id,
    required this.name,
    required this.landingDate,
    required this.launchDate,
    required this.status,
    required this.maxSol,
    required this.maxDate,
    required this.totalPhotos,
    required this.cameras,
  });

  factory Rover.fromJson(Map<String, dynamic> json) => Rover(
        id: json["id"],
        name: json["name"],
        landingDate: DateTime.parse(json["landing_date"]),
        launchDate: DateTime.parse(json["launch_date"]),
        status: json["status"],
        maxSol: json["max_sol"],
        maxDate: DateTime.parse(json["max_date"]),
        totalPhotos: json["total_photos"],
        cameras: List<CameraElement>.from(
            json["cameras"].map((x) => CameraElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "landing_date":
            "${landingDate.year.toString().padLeft(4, '0')}-${landingDate.month.toString().padLeft(2, '0')}-${landingDate.day.toString().padLeft(2, '0')}",
        "launch_date":
            "${launchDate.year.toString().padLeft(4, '0')}-${launchDate.month.toString().padLeft(2, '0')}-${launchDate.day.toString().padLeft(2, '0')}",
        "status": status,
        "max_sol": maxSol,
        "max_date":
            "${maxDate.year.toString().padLeft(4, '0')}-${maxDate.month.toString().padLeft(2, '0')}-${maxDate.day.toString().padLeft(2, '0')}",
        "total_photos": totalPhotos,
        "cameras": List<dynamic>.from(cameras.map((x) => x.toJson())),
      };
}

class CameraElement {
  String name;
  String fullName;

  CameraElement({
    required this.name,
    required this.fullName,
  });

  factory CameraElement.fromJson(Map<String, dynamic> json) => CameraElement(
        name: json["name"],
        fullName: json["full_name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "full_name": fullName,
      };
}
