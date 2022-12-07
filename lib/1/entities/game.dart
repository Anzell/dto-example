class Game {
  final String? id;
  final String? title;
  final double? rating;
  final String? source;

  Game({this.id, this.title, this.rating, this.source});

  factory Game.fromInternalApiJson(Map<String, dynamic> json) {
    return Game(
      title: json["title"] ?? "Não informado",
      source: "Internal Api",
      id: json['id'],
      rating: json['rating'],
    );
  }

  Map<String, dynamic> anzellApiToMap() {
    return {
      "id": id,
      "name": title,
      "rating": rating,
    };
  }

  factory Game.fromExternalApiJson(Map<String, dynamic> json) {
    return Game(
      title: json["name"] ?? "Não informado",
      source: "External Api",
      id: json['id']?.toString(),
      rating: json['reviews']?["average"] != null ? (json['reviews']["average"] / 5) * 100 : null,
    );
  }
}
