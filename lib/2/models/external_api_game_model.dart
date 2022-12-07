import 'package:models/2/entities/game.dart';
import 'package:models/2/mappers/external_api_game_mapper.dart';

class ExternalApiGameModel extends GameEntity {
  ExternalApiGameModel({
    String? title,
    int? id,
    double? rating,
  }) : super(
          id: id?.toString(),
          title: title,
          rating: rating != null ? (rating / 5) * 100 : null,
          source: "External Api",
        );

  factory ExternalApiGameModel.fromJson(Map<String, dynamic> json) {
    return ExternalApiGameModel(
      title: json["title"] ?? "Não informado",
      id: json['id'],
      rating: json['reviews']["average"],
    );
  }

  GameEntity toEntity() => $GameExternalApiModelToEntity(this);
}
