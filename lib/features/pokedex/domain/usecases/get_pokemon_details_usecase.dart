import 'package:injectable/injectable.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/domain/repository/pokemon_repository.dart';

@injectable
class GetPokemonDetailsUsecase {
  final PokemonRepository _pokemonRepository;

  GetPokemonDetailsUsecase(this._pokemonRepository);

  Future<PokemonModel> getPokemon(int pokemonId) => _pokemonRepository.getPokemon(pokemonId);
}