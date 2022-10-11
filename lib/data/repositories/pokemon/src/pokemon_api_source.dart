import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/data/models/models.dart';
import 'package:pokedex/data/utilities/utilities.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_api_source.g.dart';

@lazySingleton
@RestApi()
abstract class PokemonApiSource {
  @factoryMethod
  factory PokemonApiSource(Dio dio, ApiConfig apiConfig) => _PokemonApiSource(
        dio,
        baseUrl: apiConfig.url,
      );

  @GET(
    '?pokemon_ability_id={ability}&zukan_id_from={from}&zukan_id_to={to}',
  )
  Future<PokemonListResponseModel> getPokemonList(
    @Path('from') String from,
    @Path('to') String to,
    @Path('ability') String ability,
  );
}
