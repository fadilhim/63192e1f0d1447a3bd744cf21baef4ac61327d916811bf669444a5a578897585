import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/domain/entities/entities.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonListResponseModel with _$PokemonListResponseModel {
  const factory PokemonListResponseModel({
    @JsonKey(name: 'pokemons') required List<PokemonModel> data,
  }) = _PokemonListResponseModel;

  factory PokemonListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseModelFromJson(json);
}

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    @JsonKey(name: 'file_name') required String image,
    required double height,
    required double weight,
    @JsonKey(name: 'pokemon_name') required String name,
    @JsonKey(name: 'pokemon_type_id') required String types,
    @JsonKey(name: 'zukan_id') required String id,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);

  factory PokemonModel.fromEntity(PokemonEntity entity) => PokemonModel(
        height: entity.height,
        weight: entity.weight,
        id: entity.id,
        name: entity.name,
        types: entity.types.join(','),
        image: entity.image,
      );
}

extension PokemonModelX on PokemonModel {
  PokemonEntity toEntity() {
    return PokemonEntity(
      height: height,
      weight: weight,
      id: id,
      name: name,
      types: types.split(','),
      image: 'https://id.portal-pokemon.com/play/resources/pokedex' + image,
    );
  }
}
