import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/domain/states/states.dart';

abstract class PokemonRepository {
  Stream<ResourceState<List<PokemonEntity>?>> getPokemonList({
    int? from,
    int? to,
  });
}
