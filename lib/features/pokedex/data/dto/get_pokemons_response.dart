import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/common/base_dto_response.dart';
import 'package:pokedex/features/pokedex/data/dto/pokemon_response.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';

part 'get_pokemons_response.freezed.dart';
part 'get_pokemons_response.g.dart';

@freezed
class GetPokemonsResponse with _$GetPokemonsResponse implements BaseDtoResponse<List<PokemonModel>> {
  const GetPokemonsResponse._();
  const factory GetPokemonsResponse({
    int? count,
    String? next,
    String? previous,
    @Default([]) List<PokemonResponse> results,
  }) = _GetPokemonsResponse;

  factory GetPokemonsResponse.fromJson(Map<String, dynamic> json) => _$GetPokemonsResponseFromJson(json);

  @override
  List<PokemonModel> toDomainModel() {
    return results.map((e) => e.toDomainModel()).toList();
  }
}
