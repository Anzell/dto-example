import 'package:models/2/entities/game.dart';
import 'package:models/2/models/external_api_game_model.dart';

GameEntity $GameExternalApiModelToEntity(ExternalApiGameModel model) {
  return GameEntity(
    source: model.source,
    id: model.id,
    title: model.title,
    rating: model.rating,
  );
}
