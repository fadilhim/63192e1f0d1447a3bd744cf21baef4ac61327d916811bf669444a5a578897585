// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonEventTearOff {
  const _$PokemonEventTearOff();

  LoadPokemon loadPokemon() {
    return const LoadPokemon();
  }

  LoadPokemonYielded loadPokemonYielded(
      ResourceState<List<PokemonEntity>?> entity) {
    return LoadPokemonYielded(
      entity,
    );
  }
}

/// @nodoc
const $PokemonEvent = _$PokemonEventTearOff();

/// @nodoc
mixin _$PokemonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPokemon,
    required TResult Function(ResourceState<List<PokemonEntity>?> entity)
        loadPokemonYielded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPokemon,
    TResult Function(ResourceState<List<PokemonEntity>?> entity)?
        loadPokemonYielded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPokemon,
    TResult Function(ResourceState<List<PokemonEntity>?> entity)?
        loadPokemonYielded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPokemon value) loadPokemon,
    required TResult Function(LoadPokemonYielded value) loadPokemonYielded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPokemon value)? loadPokemon,
    TResult Function(LoadPokemonYielded value)? loadPokemonYielded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPokemon value)? loadPokemon,
    TResult Function(LoadPokemonYielded value)? loadPokemonYielded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEventCopyWith<$Res> {
  factory $PokemonEventCopyWith(
          PokemonEvent value, $Res Function(PokemonEvent) then) =
      _$PokemonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PokemonEventCopyWithImpl<$Res> implements $PokemonEventCopyWith<$Res> {
  _$PokemonEventCopyWithImpl(this._value, this._then);

  final PokemonEvent _value;
  // ignore: unused_field
  final $Res Function(PokemonEvent) _then;
}

/// @nodoc
abstract class $LoadPokemonCopyWith<$Res> {
  factory $LoadPokemonCopyWith(
          LoadPokemon value, $Res Function(LoadPokemon) then) =
      _$LoadPokemonCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadPokemonCopyWithImpl<$Res> extends _$PokemonEventCopyWithImpl<$Res>
    implements $LoadPokemonCopyWith<$Res> {
  _$LoadPokemonCopyWithImpl(
      LoadPokemon _value, $Res Function(LoadPokemon) _then)
      : super(_value, (v) => _then(v as LoadPokemon));

  @override
  LoadPokemon get _value => super._value as LoadPokemon;
}

/// @nodoc

class _$LoadPokemon implements LoadPokemon {
  const _$LoadPokemon();

  @override
  String toString() {
    return 'PokemonEvent.loadPokemon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadPokemon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPokemon,
    required TResult Function(ResourceState<List<PokemonEntity>?> entity)
        loadPokemonYielded,
  }) {
    return loadPokemon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPokemon,
    TResult Function(ResourceState<List<PokemonEntity>?> entity)?
        loadPokemonYielded,
  }) {
    return loadPokemon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPokemon,
    TResult Function(ResourceState<List<PokemonEntity>?> entity)?
        loadPokemonYielded,
    required TResult orElse(),
  }) {
    if (loadPokemon != null) {
      return loadPokemon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPokemon value) loadPokemon,
    required TResult Function(LoadPokemonYielded value) loadPokemonYielded,
  }) {
    return loadPokemon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPokemon value)? loadPokemon,
    TResult Function(LoadPokemonYielded value)? loadPokemonYielded,
  }) {
    return loadPokemon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPokemon value)? loadPokemon,
    TResult Function(LoadPokemonYielded value)? loadPokemonYielded,
    required TResult orElse(),
  }) {
    if (loadPokemon != null) {
      return loadPokemon(this);
    }
    return orElse();
  }
}

abstract class LoadPokemon implements PokemonEvent {
  const factory LoadPokemon() = _$LoadPokemon;
}

/// @nodoc
abstract class $LoadPokemonYieldedCopyWith<$Res> {
  factory $LoadPokemonYieldedCopyWith(
          LoadPokemonYielded value, $Res Function(LoadPokemonYielded) then) =
      _$LoadPokemonYieldedCopyWithImpl<$Res>;
  $Res call({ResourceState<List<PokemonEntity>?> entity});

  $ResourceStateCopyWith<List<PokemonEntity>?, $Res> get entity;
}

/// @nodoc
class _$LoadPokemonYieldedCopyWithImpl<$Res>
    extends _$PokemonEventCopyWithImpl<$Res>
    implements $LoadPokemonYieldedCopyWith<$Res> {
  _$LoadPokemonYieldedCopyWithImpl(
      LoadPokemonYielded _value, $Res Function(LoadPokemonYielded) _then)
      : super(_value, (v) => _then(v as LoadPokemonYielded));

  @override
  LoadPokemonYielded get _value => super._value as LoadPokemonYielded;

  @override
  $Res call({
    Object? entity = freezed,
  }) {
    return _then(LoadPokemonYielded(
      entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as ResourceState<List<PokemonEntity>?>,
    ));
  }

  @override
  $ResourceStateCopyWith<List<PokemonEntity>?, $Res> get entity {
    return $ResourceStateCopyWith<List<PokemonEntity>?, $Res>(_value.entity,
        (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$LoadPokemonYielded implements LoadPokemonYielded {
  const _$LoadPokemonYielded(this.entity);

  @override
  final ResourceState<List<PokemonEntity>?> entity;

  @override
  String toString() {
    return 'PokemonEvent.loadPokemonYielded(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadPokemonYielded &&
            const DeepCollectionEquality().equals(other.entity, entity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(entity));

  @JsonKey(ignore: true)
  @override
  $LoadPokemonYieldedCopyWith<LoadPokemonYielded> get copyWith =>
      _$LoadPokemonYieldedCopyWithImpl<LoadPokemonYielded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPokemon,
    required TResult Function(ResourceState<List<PokemonEntity>?> entity)
        loadPokemonYielded,
  }) {
    return loadPokemonYielded(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadPokemon,
    TResult Function(ResourceState<List<PokemonEntity>?> entity)?
        loadPokemonYielded,
  }) {
    return loadPokemonYielded?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPokemon,
    TResult Function(ResourceState<List<PokemonEntity>?> entity)?
        loadPokemonYielded,
    required TResult orElse(),
  }) {
    if (loadPokemonYielded != null) {
      return loadPokemonYielded(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPokemon value) loadPokemon,
    required TResult Function(LoadPokemonYielded value) loadPokemonYielded,
  }) {
    return loadPokemonYielded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPokemon value)? loadPokemon,
    TResult Function(LoadPokemonYielded value)? loadPokemonYielded,
  }) {
    return loadPokemonYielded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPokemon value)? loadPokemon,
    TResult Function(LoadPokemonYielded value)? loadPokemonYielded,
    required TResult orElse(),
  }) {
    if (loadPokemonYielded != null) {
      return loadPokemonYielded(this);
    }
    return orElse();
  }
}

abstract class LoadPokemonYielded implements PokemonEvent {
  const factory LoadPokemonYielded(ResourceState<List<PokemonEntity>?> entity) =
      _$LoadPokemonYielded;

  ResourceState<List<PokemonEntity>?> get entity;
  @JsonKey(ignore: true)
  $LoadPokemonYieldedCopyWith<LoadPokemonYielded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PokemonStateTearOff {
  const _$PokemonStateTearOff();

  _PokemonState call(
      {required ResourceState<List<PokemonEntity>?> pokemonList}) {
    return _PokemonState(
      pokemonList: pokemonList,
    );
  }
}

/// @nodoc
const $PokemonState = _$PokemonStateTearOff();

/// @nodoc
mixin _$PokemonState {
  ResourceState<List<PokemonEntity>?> get pokemonList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonStateCopyWith<PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStateCopyWith<$Res> {
  factory $PokemonStateCopyWith(
          PokemonState value, $Res Function(PokemonState) then) =
      _$PokemonStateCopyWithImpl<$Res>;
  $Res call({ResourceState<List<PokemonEntity>?> pokemonList});

  $ResourceStateCopyWith<List<PokemonEntity>?, $Res> get pokemonList;
}

/// @nodoc
class _$PokemonStateCopyWithImpl<$Res> implements $PokemonStateCopyWith<$Res> {
  _$PokemonStateCopyWithImpl(this._value, this._then);

  final PokemonState _value;
  // ignore: unused_field
  final $Res Function(PokemonState) _then;

  @override
  $Res call({
    Object? pokemonList = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as ResourceState<List<PokemonEntity>?>,
    ));
  }

  @override
  $ResourceStateCopyWith<List<PokemonEntity>?, $Res> get pokemonList {
    return $ResourceStateCopyWith<List<PokemonEntity>?, $Res>(
        _value.pokemonList, (value) {
      return _then(_value.copyWith(pokemonList: value));
    });
  }
}

/// @nodoc
abstract class _$PokemonStateCopyWith<$Res>
    implements $PokemonStateCopyWith<$Res> {
  factory _$PokemonStateCopyWith(
          _PokemonState value, $Res Function(_PokemonState) then) =
      __$PokemonStateCopyWithImpl<$Res>;
  @override
  $Res call({ResourceState<List<PokemonEntity>?> pokemonList});

  @override
  $ResourceStateCopyWith<List<PokemonEntity>?, $Res> get pokemonList;
}

/// @nodoc
class __$PokemonStateCopyWithImpl<$Res> extends _$PokemonStateCopyWithImpl<$Res>
    implements _$PokemonStateCopyWith<$Res> {
  __$PokemonStateCopyWithImpl(
      _PokemonState _value, $Res Function(_PokemonState) _then)
      : super(_value, (v) => _then(v as _PokemonState));

  @override
  _PokemonState get _value => super._value as _PokemonState;

  @override
  $Res call({
    Object? pokemonList = freezed,
  }) {
    return _then(_PokemonState(
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList // ignore: cast_nullable_to_non_nullable
              as ResourceState<List<PokemonEntity>?>,
    ));
  }
}

/// @nodoc

class _$_PokemonState implements _PokemonState {
  const _$_PokemonState({required this.pokemonList});

  @override
  final ResourceState<List<PokemonEntity>?> pokemonList;

  @override
  String toString() {
    return 'PokemonState(pokemonList: $pokemonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonState &&
            const DeepCollectionEquality()
                .equals(other.pokemonList, pokemonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(pokemonList));

  @JsonKey(ignore: true)
  @override
  _$PokemonStateCopyWith<_PokemonState> get copyWith =>
      __$PokemonStateCopyWithImpl<_PokemonState>(this, _$identity);
}

abstract class _PokemonState implements PokemonState {
  const factory _PokemonState(
          {required ResourceState<List<PokemonEntity>?> pokemonList}) =
      _$_PokemonState;

  @override
  ResourceState<List<PokemonEntity>?> get pokemonList;
  @override
  @JsonKey(ignore: true)
  _$PokemonStateCopyWith<_PokemonState> get copyWith =>
      throw _privateConstructorUsedError;
}
