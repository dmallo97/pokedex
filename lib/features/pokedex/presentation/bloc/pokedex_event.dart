part of 'pokedex_bloc.dart';

@freezed
class PokedexEvent with _$PokedexEvent {
  const factory PokedexEvent.getPokemons() = _GetPokemons;
  // const factory PokedexEvent.nextPage() = _NextPage;
  // const factory PokedexEvent.previousPage() = _PreviousPage;
}
