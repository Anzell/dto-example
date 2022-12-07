import 'package:models/2/entities/game.dart';
import 'package:models/2/mappers/internal_api_game_mapper.dart';

class InternalApiGameModel extends GameEntity {
  InternalApiGameModel({
    String? title,
    String? id,
    double? rating,
  }) : super(
          id: id,
          title: title,
          rating: rating,
          source: "Internal Api",
        );

  factory InternalApiGameModel.fromJson(Map<String, dynamic> json) {
    return InternalApiGameModel(
      title: json["name"] ?? "Não informado",
      id: json['id'],
      rating: json['rating'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": title,
      "rating": rating,
    };
  }

  factory InternalApiGameModel.fromEntity(GameEntity entity) => $GameInternalApiModelFromEntity(entity);
  GameEntity toEntity() => $GameInternalApiModelToEntity(this);
}
