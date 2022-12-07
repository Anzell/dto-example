import 'package:models/2/entities/game.dart';

import '../models/internal_api_game_model.dart';

GameEntity $GameInternalApiModelToEntity(InternalApiGameModel model) {
  return GameEntity(
    source: model.source,
    id: model.id,
    title: model.title,
    rating: model.rating,
  );
}

InternalApiGameModel $GameInternalApiModelFromEntity(GameEntity entity) {
  return InternalApiGameModel(
    id: entity.id,
    title: entity.title,
    rating: entity.rating,
  );
}
