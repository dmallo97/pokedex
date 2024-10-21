import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';

abstract class PokemonRepository {
  Future<List<PokemonModel>> getPokemons({int? limit});
  Future<PokemonModel> getPokemon(int pokemonId);
}
