import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/domain/repositories/repositories.dart';
import 'package:pokedex/domain/states/states.dart';
import 'package:pokedex/utilities/utilities.dart';

@lazySingleton
class GetPokemonListInteractor {
  final PokemonRepository _pokemonRepository;

  GetPokemonListInteractor(this._pokemonRepository);

  Stream<ResourceState<List<PokemonEntity>?>> call({
    int? from,
    int? to,
  }) async* {
    yield* _pokemonRepository.getPokemonList(
      from: from,
      to: to,
    );
  }
}

@lazySingleton
class SharePokemonInteractor {
  final PokeShare _pokeShare;

  SharePokemonInteractor(this._pokeShare);

  void call({
    required Uint8List image,
  }) {
    _pokeShare.shareWhatsapp(data: image);
  }
}

@lazySingleton
class DownloadPokemonInteractor {
  final PokePdf _pokePdf;

  DownloadPokemonInteractor(this._pokePdf);

  void call({
    required List<PokemonEntity> pokemons,
  }) {
    _pokePdf.savePdf(pokemons);
  }
}
