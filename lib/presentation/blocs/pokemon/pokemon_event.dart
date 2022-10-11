part of 'pokemon_bloc.dart';

@freezed
class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.loadPokemon() = LoadPokemon;

  const factory PokemonEvent.loadPokemonYielded(
    ResourceState<List<PokemonEntity>?> entity,
  ) = LoadPokemonYielded;
}
