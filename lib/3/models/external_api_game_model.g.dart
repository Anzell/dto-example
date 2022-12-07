// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_api_game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalApiGameModel _$ExternalApiGameModelFromJson(Map json) =>
    ExternalApiGameModel(
      idModel: json['id'] as int?,
      name: json['name'] as String?,
      reviewsModel: json['reviews'] == null
          ? null
          : ReviewsModel.fromJson(
              Map<String, dynamic>.from(json['reviews'] as Map)),
    );

ReviewsModel _$ReviewsModelFromJson(Map json) => ReviewsModel(
      average: (json['average'] as num?)?.toDouble(),
    );
