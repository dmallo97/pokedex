// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../core/application_cubit/pokedex_app_cubit.dart' as _i5;
import '../../core/connectivity/connectivity_check_bloc.dart' as _i4;
import '../../features/pokedex/data/repository/pokemon_repository_impl.dart'
    as _i9;
import '../../features/pokedex/data/service/pokeapi_pokemon_service.dart'
    as _i7;
import '../../features/pokedex/domain/repository/pokemon_repository.dart'
    as _i8;
import '../../features/pokedex/domain/usecases/get_pokemon_details_usecase.dart'
    as _i11;
import '../../features/pokedex/domain/usecases/get_pokemons_usecase.dart'
    as _i10;
import '../../features/pokedex/presentation/bloc/pokedex_bloc.dart' as _i13;
import '../../features/pokedex/presentation/bloc/pokemon_details_bloc.dart'
    as _i12;
import 'register_module.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.sharedPreferences(),
      preResolve: true,
    );
    gh.singleton<_i4.ConnectivityCheckBloc>(() => _i4.ConnectivityCheckBloc());
    gh.singleton<_i5.PokedexAppCubit>(() => _i5.PokedexAppCubit());
    gh.factory<_i6.Dio>(
      () => registerModule.getDioClient(),
      instanceName: 'pokeapiService',
    );
    gh.factory<_i7.PokeapiPokemonService>(() =>
        _i7.PokeapiPokemonService(gh<_i6.Dio>(instanceName: 'pokeapiService')));
    gh.factory<_i8.PokemonRepository>(
        () => _i9.PokemonRepositoryImpl(gh<_i7.PokeapiPokemonService>()));
    gh.factory<_i10.GetPokemonsUsecase>(
        () => _i10.GetPokemonsUsecase(gh<_i8.PokemonRepository>()));
    gh.factory<_i11.GetPokemonDetailsUsecase>(
        () => _i11.GetPokemonDetailsUsecase(gh<_i8.PokemonRepository>()));
    gh.factoryParam<_i12.PokemonDetailsBloc, int, dynamic>((
      pokemonId,
      _,
    ) =>
        _i12.PokemonDetailsBloc(
          gh<_i11.GetPokemonDetailsUsecase>(),
          pokemonId,
        ));
    gh.singleton<_i13.PokedexBloc>(
        () => _i13.PokedexBloc(gh<_i10.GetPokemonsUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
