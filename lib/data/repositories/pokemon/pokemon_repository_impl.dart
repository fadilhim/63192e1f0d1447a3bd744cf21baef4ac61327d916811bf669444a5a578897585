import 'package:injectable/injectable.dart';
import 'package:pokedex/data/models/pokemon/pokemon_model.dart';
import 'package:pokedex/data/repositories/pokemon/src/pokemon_api_source.dart';
import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/domain/repositories/repositories.dart';
import 'package:pokedex/domain/states/states.dart';

@LazySingleton(as: PokemonRepository)
class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonApiSource _pokemonApiSource;

  PokemonRepositoryImpl(
    this._pokemonApiSource,
  );

  @override
  Stream<ResourceState<List<PokemonEntity>?>> getPokemonList({
    int? from,
    int? to,
  }) async* {
    yield const ResourceState.loading();

    try {
      final result = await _pokemonApiSource.getPokemonList(
        from.toString(),
        to.toString(),
        '',
      );

      yield ResourceState.success(
        code: 5001,
        message: 'success',
        data: result.data.map((e) => e.toEntity()).toList(),
      );
    } catch (e) {
      yield ResourceState.error(code: 5000, message: '$e');
    }
  }
}
