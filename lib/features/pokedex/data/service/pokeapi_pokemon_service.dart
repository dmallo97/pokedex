import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/features/pokedex/data/dto/get_pokemons_response.dart';
import 'package:pokedex/features/pokedex/data/dto/pokemon_response.dart';
import 'package:retrofit/retrofit.dart';

part 'pokeapi_pokemon_service.g.dart';

@injectable
@RestApi()
abstract class PokeapiPokemonService {
  @factoryMethod
  factory PokeapiPokemonService(@Named('pokeapiService') Dio dio) = _PokeapiPokemonService;

  @GET('pokemon')
  Future<GetPokemonsResponse> getPokemons({
    @Query('limit') int? limit,
  });

  @GET('pokemon/{id}')
  Future<PokemonResponse> getPokemon({
    @Path('id') required int pokemonId,
  });
}
