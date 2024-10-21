part of 'pokedex_bloc.dart';

ResultState<List<PokemonModel>> _pokemonsResultFromJsonConverter(Map<String, dynamic> json) =>
    ResultState<List<PokemonModel>>.fromJson(json, (p0) {
      final rawList = p0 as List<Map<String, dynamic>>;
      return rawList.map((e) => PokemonModel.fromJson(e)).toList();
    });

Map<String, dynamic> _pokemonsResultToJsonConverter(ResultState<List<PokemonModel>> resultState) =>
    resultState.toJson((p0) => p0.map((e) => e.toJson()).toList());

@freezed
class PokedexState with _$PokedexState {
  const factory PokedexState({
    @JsonKey(
      fromJson: _pokemonsResultFromJsonConverter,
      toJson: _pokemonsResultToJsonConverter,
    )
    @Default(Initial())
    ResultState<List<PokemonModel>> fetchPokemonsResult,
  }) = _PokedexState;

  factory PokedexState.fromJson(Map<String, dynamic> json) => _$PokedexStateFromJson(json);
}
