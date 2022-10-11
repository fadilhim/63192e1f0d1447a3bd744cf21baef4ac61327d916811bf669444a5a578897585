import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/domain/entities/entities.dart';
import 'package:pokedex/presentation/features/pokemon/pokemon_detail_page.dart';
import 'package:pokedex/presentation/features/pokemon/pokemon_list_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(
      initial: true,
      path: '/',
      name: 'PokemonListRouter',
      page: PokemonListPage,
    ),
    AutoRoute<void>(
      path: 'pokemon-detail',
      name: 'PokemonDetailRouter',
      page: PokemonDetailPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter() : super();
}
