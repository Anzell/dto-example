import 'package:json_annotation/json_annotation.dart';
import 'package:models/3/entities/game.dart';
import 'package:models/3/mappers/external_api_game_mapper.dart';

part 'external_api_game_model.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true, createToJson: false)
class ExternalApiGameModel extends GameEntity {
  @JsonKey(name: "id")
  final int? idModel;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "reviews")
  final ReviewsModel? reviewsModel;

  ExternalApiGameModel({
    this.idModel,
    this.name,
    this.reviewsModel,
  }) : super(
          id: idModel?.toString(),
          title: name,
          rating: reviewsModel?.average != null ? (reviewsModel!.average! / 5) * 100 : null,
          source: "External Api",
        );

  factory ExternalApiGameModel.fromJson(Map<String, dynamic> json) => _$ExternalApiGameModelFromJson(json);

  GameEntity toEntity() => $GameExternalApiModelToEntity(this);
}

@JsonSerializable(anyMap: true, explicitToJson: true, createToJson: false)
class ReviewsModel {
  @JsonKey(name: "average")
  final double? average;

  ReviewsModel({this.average});

  factory ReviewsModel.fromJson(Map<String, dynamic> json) => _$ReviewsModelFromJson(json);
}
