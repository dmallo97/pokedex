part of 'pokedex_app_cubit.dart';

@freezed
class PokedexAppState with _$PokedexAppState {
  const factory PokedexAppState({
    @Default([]) List<PokemonModel> capturedPokemons,
    @Default(OrderType.byId) OrderType orderBy,
    PokemonTypeModel? mostCapturedPokemonType,
  }) = _PokedexAppState;

  factory PokedexAppState.fromJson(Map<String, dynamic> json) => _$PokedexAppStateFromJson(json);
}

enum OrderType {
  alphabetically,
  byId,
  byPokemonType,
}
