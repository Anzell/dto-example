import 'package:models/3/models/external_api_game_model.dart';
import 'package:models/3/models/internal_api_game_model.dart';

void main(List<String> arguments) async {
  final gameFromInternalApi = InternalApiGameModel.fromJson({
    "id": "3j21h3kj2",
    "title": "Max Payne",
    "rating": 98.5,
  });
  final gameFromExternalApi = ExternalApiGameModel.fromJson({
    "id": 1234,
    "name": "Max Payne",
    "reviews": {"average": 3.5}
  });
  print(gameFromInternalApi.rating);
  print(gameFromExternalApi.rating);
}

/*
GAME Entity - APP

id - String?
tile - String
rating - double? (0-100)
source - String
*/

/*
FONTE 1 - Internal Api

{
  "id": "3j21h3kj2",
  "title": "Max Payne",
  "rating": 98.5
}
*/

/*
FONTE 2 - External Api

{
  "id": 1234,
  "name": "Max Payne",
  "reviews": {
    "average": 3.5 (0 - 5)
  }
}
*/