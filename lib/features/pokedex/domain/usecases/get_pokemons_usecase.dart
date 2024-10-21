import 'package:injectable/injectable.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/domain/repository/pokemon_repository.dart';

@injectable
class GetPokemonsUsecase {
  final PokemonRepository _pokemonRepository;

  GetPokemonsUsecase(this._pokemonRepository);

  Future<List<PokemonModel>> getPokemons() => _pokemonRepository.getPokemons(limit: 151);
}
