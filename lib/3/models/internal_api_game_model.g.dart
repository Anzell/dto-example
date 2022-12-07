// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_api_game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InternalApiGameModel _$InternalApiGameModelFromJson(Map json) =>
    InternalApiGameModel(
      title: json['title'] as String?,
      id: json['id'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$InternalApiGameModelToJson(
        InternalApiGameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rating': instance.rating,
    };
