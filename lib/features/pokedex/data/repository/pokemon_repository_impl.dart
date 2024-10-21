import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/core/exceptions/custom_exception.dart';
import 'package:pokedex/features/pokedex/data/service/pokeapi_pokemon_service.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/domain/repository/pokemon_repository.dart';

@Injectable(as: PokemonRepository)
class PokemonRepositoryImpl implements PokemonRepository {
  final PokeapiPokemonService _service;

  PokemonRepositoryImpl(this._service);

  @override
  Future<PokemonModel> getPokemon(int pokemonId) async {
    try {
      final result = await _service.getPokemon(pokemonId: pokemonId);
      return result.toDomainModel();
    } on DioException catch (e) {
      throw DataException(statusCode: e.response?.statusCode ?? -1, message: e.message);
    } catch (e) {
      throw DomainException(message: e.toString());
    }
  }

  @override
  Future<List<PokemonModel>> getPokemons({int? limit}) async {
    try {
      final result = await _service.getPokemons(limit: limit);
      return result.toDomainModel();
    } on DioException catch (e) {
      throw DataException(statusCode: e.response?.statusCode ?? -1, message: e.message);
    } catch (e) {
      throw DomainException(message: e.toString());
    }
  }
}
