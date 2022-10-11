import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber/fimber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/domain/interactors/interactors.dart';
import 'package:pokedex/domain/states/states.dart';

part 'pokemon_bloc.freezed.dart';
part 'pokemon_event.dart';
part 'pokemon_state.dart';

@injectable
class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final GetPokemonListInteractor _getPokemonListInteractor;

  StreamSubscription<ResourceState<List<PokemonEntity>?>>?
      _getPokemonSubscription;

  PokemonBloc(
    this._getPokemonListInteractor,
  ) : super(PokemonState.initial()) {
    on<LoadPokemon>(_handleLoadPokemon);
    on<LoadPokemonYielded>(_handleLoadPokemonYielded);

    add(const PokemonEvent.loadPokemon());
  }

  @override
  Future<void> close() {
    _getPokemonSubscription?.cancel();
    return super.close();
  }

  Future<void> _handleLoadPokemon(
    LoadPokemon event,
    Emitter<PokemonState> emit,
  ) async {
    await _getPokemonSubscription?.cancel();

    _getPokemonSubscription = _getPokemonListInteractor(
      from: 1,
      to: 101,
    ).listen((result) {
      add(PokemonEvent.loadPokemonYielded(result));
    });
  }

  Future<void> _handleLoadPokemonYielded(
    LoadPokemonYielded event,
    Emitter<PokemonState> emit,
  ) async {
    event.entity.map(
      loading: (result) {
        Fimber.i('Loading pokemon list...');
        emit(state.copyWith(
          pokemonList: result,
        ));
      },
      success: (result) {
        Fimber.i('Successfully loaded pokemon list');
        emit(state.copyWith(
          pokemonList: result,
        ));
      },
      error: (result) {
        Fimber.i('Failed to load pokemon list: Code: ${result.code} \n'
            'Message: ${result.message}');
        emit(state.copyWith(
          pokemonList: result,
        ));
      },
    );
  }
}
