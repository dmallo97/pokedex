import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex/core/common/result_state.dart';
import 'package:pokedex/core/exceptions/custom_exception.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/domain/usecases/get_pokemons_usecase.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';
part 'pokedex_bloc.freezed.dart';
part 'pokedex_bloc.g.dart';

@singleton
class PokedexBloc extends HydratedBloc<PokedexEvent, PokedexState> {
  final GetPokemonsUsecase _getPokemonsUsecase;

  PokedexBloc(this._getPokemonsUsecase) : super(const PokedexState()) {
    on<_GetPokemons>(_getPokemons);
    // on<_NextPage>(_searchNextPage);
    // on<_PreviousPage>(_searchPreviousPage);
    add(const PokedexEvent.getPokemons());
  }

  void _getPokemons(_GetPokemons event, Emitter<PokedexState> emit) async {
    try {
      emit(state.copyWith(fetchPokemonsResult: const Loading()));
      final pokemons = await _getPokemonsUsecase.getPokemons();
      emit(state.copyWith(fetchPokemonsResult: Data(data: pokemons)));
    } on CustomException catch (e) {
      emit(state.copyWith(fetchPokemonsResult: Error(exception: e)));
    }
  }

  @override
  PokedexState? fromJson(Map<String, dynamic> json) {
    return PokedexState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PokedexState state) {
    return state.toJson();
  }

  // void _searchNextPage(_NextPage event, Emitter<PokedexState> emit) async {
  //   try {
  //     emit(state.copyWith(fetchLocationsResult: const Loading()));
  //     final locations = await _getLocationsUseCase.getLocations(state.searchText!, page: state.currentPage + 1);
  //     emit(state.copyWith(
  //       fetchLocationsResult: Data(data: locations),
  //       itemCount: locations.length,
  //       currentPage: state.currentPage + 1,
  //     ));
  //   } on DomainException catch (e) {
  //     emit(state.copyWith(fetchLocationsResult: Error(error: e)));
  //   }
  // }

  // void _searchPreviousPage(_PreviousPage event, Emitter<PokedexState> emit) async {
  //   try {
  //     emit(state.copyWith(fetchLocationsResult: const Loading()));
  //     final locations = await _getLocationsUseCase.getLocations(state.searchText!, page: state.currentPage - 1);
  //     emit(state.copyWith(
  //       fetchLocationsResult: Data(data: locations),
  //       itemCount: locations.length,
  //       currentPage: state.currentPage - 1,
  //     ));
  //   } on DomainException catch (e) {
  //     emit(state.copyWith(fetchLocationsResult: Error(error: e)));
  //   }
  // }
}
