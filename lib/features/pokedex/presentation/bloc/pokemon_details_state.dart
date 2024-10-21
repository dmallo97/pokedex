part of 'pokemon_details_bloc.dart';

@freezed
class PokemonDetailsState with _$PokemonDetailsState {
  const factory PokemonDetailsState({
    @Default(Loading()) ResultState<PokemonModel> fetchPokemonDetailsResult,
  }) = _PokemonDetailsState;
}
