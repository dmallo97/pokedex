import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';

part 'pokedex_app_state.dart';
part 'pokedex_app_cubit.freezed.dart';
part 'pokedex_app_cubit.g.dart';

@singleton
class PokedexAppCubit extends Cubit<PokedexAppState> with HydratedMixin {
  PokedexAppCubit() : super(const PokedexAppState()) {
    hydrate();
  }

  void addPokemon(PokemonModel pokemon) {
    final capturedPokemons = List<PokemonModel>.from(state.capturedPokemons);
    capturedPokemons.add(pokemon);
    emit(state.copyWith(capturedPokemons: capturedPokemons));
    orderBy(state.orderBy);
    setMostPopularPokemonType();
  }

  void removePokemon(PokemonModel pokemon) {
    final capturedPokemons = List<PokemonModel>.from(state.capturedPokemons);
    capturedPokemons.remove(pokemon);
    emit(state.copyWith(capturedPokemons: capturedPokemons));
    orderBy(state.orderBy);
    setMostPopularPokemonType();
  }

  void orderBy(OrderType orderBy) {
    final auxList = List<PokemonModel>.from(state.capturedPokemons);
    switch (orderBy) {
      case OrderType.byId:
        auxList.sort((a, b) => a.id.compareTo(b.id));
        // emit(state.copyWith(capturedPokemons: state.capturedPokemons..sort((a, b) => a.id.compareTo(b.id))));
        break;
      case OrderType.alphabetically:
        auxList.sort((a, b) => a.name.compareTo(b.name));
        // emit(state.copyWith(capturedPokemons: state.capturedPokemons..sort((a, b) => a.name.compareTo(b.name))));
        break;
      case OrderType.byPokemonType:
        auxList.sort((a, b) => a.types.first.name.compareTo(b.types.first.name));
        // emit(state.copyWith(
        //     capturedPokemons: state.capturedPokemons
        //       ..sort((a, b) => a.types.first.name.compareTo(b.types.first.name))));
        break;
      default:
    }
    emit(state.copyWith(capturedPokemons: auxList));
  }

  void setMostPopularPokemonType() {
    if (state.capturedPokemons.isEmpty) {
      emit(state.copyWith(mostCapturedPokemonType: null));
      return;
    }
    final Map<PokemonTypeModel, int> pokemonTypesCount = {};
    for (var capturedPokemon in state.capturedPokemons) {
      pokemonTypesCount.update(
        capturedPokemon.types.first,
        (currentCount) => currentCount + 1,
        ifAbsent: () => 0,
      );
    }
    final entries = pokemonTypesCount.entries.toList();
    entries.toList().sort((entryA, entryB) => entryA.value.compareTo(entryB.value));
    final maxCount = entries.first.value;
    final mostPopularTypes = entries.where((entry) => entry.value == maxCount);
    if (mostPopularTypes.length == 1) {
      emit(state.copyWith(mostCapturedPokemonType: mostPopularTypes.first.key));
    } else {
      emit(state.copyWith(mostCapturedPokemonType: null));
    }
  }

  @override
  PokedexAppState? fromJson(Map<String, dynamic> json) {
    return PokedexAppState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PokedexAppState state) {
    return state.toJson();
  }
}
