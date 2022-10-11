import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_entity.freezed.dart';

@freezed
class PokemonEntity with _$PokemonEntity {
  const factory PokemonEntity({
    required String image,
    required double height,
    required double weight,
    required String name,
    required String id,
    required List<String> types,
  }) = _PokemonEntity;
}
