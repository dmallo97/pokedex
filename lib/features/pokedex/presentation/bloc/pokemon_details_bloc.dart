import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/core/common/result_state.dart';
import 'package:pokedex/core/exceptions/custom_exception.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/domain/usecases/get_pokemon_details_usecase.dart';

part 'pokemon_details_state.dart';
part 'pokemon_details_event.dart';
part 'pokemon_details_bloc.freezed.dart';

@injectable
class PokemonDetailsBloc extends Bloc<PokemonDetailsEvent, PokemonDetailsState> {
  final GetPokemonDetailsUsecase _getPokemonDetailsUsecase;

  PokemonDetailsBloc(this._getPokemonDetailsUsecase, @factoryParam int pokemonId) : super(const PokemonDetailsState()) {
    on<_FetchPokemonDetails>(_fetchPokemonDetailsHandler);
    add(PokemonDetailsEvent.fetchPokemonDetails(pokemonId));
  }

  void _fetchPokemonDetailsHandler(_FetchPokemonDetails event, Emitter<PokemonDetailsState> emit) async {
    try {
      emit(state.copyWith(fetchPokemonDetailsResult: const Loading()));
      final result = await _getPokemonDetailsUsecase.getPokemon(event.pokemonId);
      emit(state.copyWith(fetchPokemonDetailsResult: Data(data: result)));
    } on CustomException catch (e) {
      emit(state.copyWith(fetchPokemonDetailsResult: Error(exception: e)));
    }
  }
}
