// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonListResponseModel _$$_PokemonListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PokemonListResponseModel(
      data: (json['pokemons'] as List<dynamic>)
          .map((e) => PokemonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PokemonListResponseModelToJson(
        _$_PokemonListResponseModel instance) =>
    <String, dynamic>{
      'pokemons': instance.data,
    };

_$_PokemonModel _$$_PokemonModelFromJson(Map<String, dynamic> json) =>
    _$_PokemonModel(
      image: json['file_name'] as String,
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      name: json['pokemon_name'] as String,
      types: json['pokemon_type_id'] as String,
      id: json['zukan_id'] as String,
    );

Map<String, dynamic> _$$_PokemonModelToJson(_$_PokemonModel instance) =>
    <String, dynamic>{
      'file_name': instance.image,
      'height': instance.height,
      'weight': instance.weight,
      'pokemon_name': instance.name,
      'pokemon_type_id': instance.types,
      'zukan_id': instance.id,
    };
