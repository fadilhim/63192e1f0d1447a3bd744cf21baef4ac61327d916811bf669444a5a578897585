// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    PokemonListRouter.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const PokemonListPage());
    },
    PokemonDetailRouter.name: (routeData) {
      final args = routeData.argsAs<PokemonDetailRouterArgs>();
      return AdaptivePage<void>(
          routeData: routeData,
          child: PokemonDetailPage(key: args.key, entity: args.entity));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(PokemonListRouter.name, path: '/'),
        RouteConfig(PokemonDetailRouter.name, path: 'pokemon-detail')
      ];
}

/// generated route for
/// [PokemonListPage]
class PokemonListRouter extends PageRouteInfo<void> {
  const PokemonListRouter() : super(PokemonListRouter.name, path: '/');

  static const String name = 'PokemonListRouter';
}

/// generated route for
/// [PokemonDetailPage]
class PokemonDetailRouter extends PageRouteInfo<PokemonDetailRouterArgs> {
  PokemonDetailRouter({Key? key, required PokemonEntity entity})
      : super(PokemonDetailRouter.name,
            path: 'pokemon-detail',
            args: PokemonDetailRouterArgs(key: key, entity: entity));

  static const String name = 'PokemonDetailRouter';
}

class PokemonDetailRouterArgs {
  const PokemonDetailRouterArgs({this.key, required this.entity});

  final Key? key;

  final PokemonEntity entity;

  @override
  String toString() {
    return 'PokemonDetailRouterArgs{key: $key, entity: $entity}';
  }
}
