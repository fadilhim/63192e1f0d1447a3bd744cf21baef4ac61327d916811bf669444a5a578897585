// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokedex/data/repositories/pokemon/pokemon_repository_impl.dart'
    as _i11;
import 'package:pokedex/data/repositories/pokemon/src/pokemon_api_source.dart'
    as _i6;
import 'package:pokedex/data/utilities/config/config.dart' as _i3;
import 'package:pokedex/data/utilities/utilities.dart' as _i7;
import 'package:pokedex/di/modules/internal_module.dart' as _i13;
import 'package:pokedex/di/modules/third_party_module.dart' as _i14;
import 'package:pokedex/domain/interactors/interactors.dart' as _i9;
import 'package:pokedex/domain/interactors/pokemon/pokemon_interactor.dart'
    as _i12;
import 'package:pokedex/domain/repositories/repositories.dart' as _i10;
import 'package:pokedex/presentation/blocs/pokemon/pokemon_bloc.dart' as _i8;
import 'package:pokedex/presentation/routers/router.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final internalModule = _$InternalModule();
  final thirdPartyModule = _$ThirdPartyModule();
  gh.lazySingleton<_i3.ApiConfig>(() => _i3.ApiConfig());
  gh.lazySingleton<_i4.AppRouter>(() => internalModule.appRouter);
  gh.factory<_i5.Dio>(() => thirdPartyModule.dio);
  gh.lazySingleton<_i6.PokemonApiSource>(
      () => _i6.PokemonApiSource(get<_i5.Dio>(), get<_i7.ApiConfig>()));
  gh.factory<_i8.PokemonBloc>(
      () => _i8.PokemonBloc(get<_i9.GetPokemonListInteractor>()));
  gh.lazySingleton<_i10.PokemonRepository>(
      () => _i11.PokemonRepositoryImpl(get<_i6.PokemonApiSource>()));
  gh.lazySingleton<_i12.GetPokemonListInteractor>(
      () => _i12.GetPokemonListInteractor(get<_i10.PokemonRepository>()));
  return get;
}

class _$InternalModule extends _i13.InternalModule {}

class _$ThirdPartyModule extends _i14.ThirdPartyModule {}
