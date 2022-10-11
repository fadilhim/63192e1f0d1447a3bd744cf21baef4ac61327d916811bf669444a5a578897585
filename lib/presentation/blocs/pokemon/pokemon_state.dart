part of 'pokemon_bloc.dart';

@freezed
class PokemonState with _$PokemonState {
  const factory PokemonState({
    required ResourceState<List<PokemonEntity>?> pokemonList,
  }) = _PokemonState;

  factory PokemonState.initial() => const PokemonState(
        pokemonList: ResourceState.loading(),
      );
}
