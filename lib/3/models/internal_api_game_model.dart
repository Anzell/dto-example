import 'package:json_annotation/json_annotation.dart';
import 'package:models/3/entities/game.dart';
import 'package:models/3/mappers/internal_api_game_mapper.dart';

part 'internal_api_game_model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
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

  factory InternalApiGameModel.fromJson(Map<String, dynamic> json) => _$InternalApiGameModelFromJson(json);
  Map<String, dynamic> toJson() => _$InternalApiGameModelToJson(this);

  factory InternalApiGameModel.fromEntity(GameEntity entity) => $GameInternalApiModelFromEntity(entity);
  GameEntity toEntity() => $GameInternalApiModelToEntity(this);
}
