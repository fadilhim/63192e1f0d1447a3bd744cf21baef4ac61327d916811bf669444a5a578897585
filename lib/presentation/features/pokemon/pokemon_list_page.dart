import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/di/inject.dart';
import 'package:pokedex/gen/assets.gen.dart';
import 'package:pokedex/presentation/blocs/pokemon/pokemon_bloc.dart';
import 'package:pokedex/presentation/routers/router.dart';
import 'package:pokedex/presentation/themes/src/color.dart';
import 'package:pokedex/presentation/themes/src/typography.dart';
import 'package:pokedex/presentation/widgets/widgets.dart';
import 'package:pokedex/utilities/utilities.dart';

class PokemonListPage extends StatefulWidget {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  State<PokemonListPage> createState() => _PokemonListPageState();
}

class _PokemonListPageState extends State<PokemonListPage> {
  final PokePdf _pokePdf = PokePdf();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<PokemonBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pokédex', style: PokeTypography.headline1()),
          actions: [
            BlocBuilder<PokemonBloc, PokemonState>(builder: (context, state) {
              return IconButton(
                onPressed: () => _handleOnPressed(context),
                icon: const Icon(Icons.file_download),
              );
            }),
          ],
        ),
        body: BlocBuilder<PokemonBloc, PokemonState>(
          builder: (context, state) {
            return state.pokemonList.when(
              loading: (_) {
                return ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                    );
                  },
                  itemBuilder: (context, index) {
                    return const PokemonLoadingCard();
                  },
                );
              },
              success: (_, __, data) {
                if (data == null) {
                  return const PokemonEmptyWidget();
                }
                return ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  children: [
                    const SizedBox(height: 24),
                    Assets.images.homePokemon.image(),
                    const SizedBox(height: 12),
                    Text(
                      'All the Pokémon data you'
                      '\'ll ever '
                      'need in '
                      'one '
                      'place!',
                      style: PokeTypography.headline1().copyWith(fontSize: 36),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Thousands of data compiled into one place',
                      style: PokeTypography.headline2(color: PokeColor.black40)
                          .copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 24),
                    for (final i in data)
                      PokemonCard(
                        onTap: () {
                          AutoRouter.of(context)
                              .push(PokemonDetailRouter(entity: i));
                        },
                        entity: i,
                      ),
                    const SizedBox(height: 60),
                  ],
                );
              },
              error: (_, __, ___) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: PokemonErrorWidget(),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _handleOnPressed(BuildContext context) async {
    try {
      final pokemons = context
              .read<PokemonBloc>()
              .state
              .pokemonList
              .mapOrNull(success: (data) => data.data) ??
          [];

      _pokePdf.savePdf(pokemons);
    } catch (_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: PokeColor.red50,
        content: Text(_.toString()),
      ));
    }
  }
}
