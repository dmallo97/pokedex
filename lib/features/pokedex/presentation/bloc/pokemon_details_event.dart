part of 'pokemon_details_bloc.dart';

@freezed
class PokemonDetailsEvent with _$PokemonDetailsEvent {
  const factory PokemonDetailsEvent.fetchPokemonDetails(int pokemonId) = _FetchPokemonDetails;
}
