import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/config/style/app_colors.dart';
import 'package:pokedex/config/style/app_styles.dart';
import 'package:pokedex/core/application_cubit/pokedex_app_cubit.dart';
import 'package:pokedex/core/widgets/bottom_nav_bar.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/presentation/bloc/pokemon_details_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PokemonDetails extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonDetails({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pokemon.name.toUpperCase(),
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: BlocSelector<PokemonDetailsBloc, PokemonDetailsState, ({bool isLoading, PokemonModel pokemon})>(
        selector: (state) {
          return state.fetchPokemonDetailsResult.maybeWhen(
            orElse: () => (isLoading: true, pokemon: PokemonModel.createDummy()),
            data: (pokemonData, _) => (isLoading: false, pokemon: pokemonData),
          );
        },
        builder: (context, pokemonDetailsState) => CustomScrollView(
          shrinkWrap: true,
          slivers: [
            Skeletonizer.sliver(
              enabled: pokemonDetailsState.isLoading,
              child: SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: SliverToBoxAdapter(
                  child: Skeleton.replace(
                    replacement: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      height: MediaQuery.of(context).size.width * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                    child: Center(
                      child: SizedBox.square(
                        dimension: MediaQuery.of(context).size.width * 0.5,
                        child: CachedNetworkImage(
                          imageUrl: pokemonDetailsState.pokemon.avatarUrl!,
                          fit: BoxFit.contain,
                          placeholder: (context, url) => Container(color: Colors.transparent),
                          errorWidget: (context, url, error) => Container(color: Colors.transparent),
                          cacheManager: CacheManager(Config(
                            pokemonDetailsState.pokemon.avatarUrl!,
                            stalePeriod: const Duration(hours: 24),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Information',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Skeletonizer.sliver(
              enabled: pokemonDetailsState.isLoading,
              child: SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.1,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  delegate: SliverChildListDelegate(
                    [
                      DetailsCard(title: 'Name', information: pokemonDetailsState.pokemon.name),
                      DetailsCard(title: 'Height', information: pokemonDetailsState.pokemon.height.toString()),
                      DetailsCard(title: 'Weight', information: pokemonDetailsState.pokemon.weight.toString()),
                      ...List<DetailsCard>.generate(
                        pokemonDetailsState.pokemon.types.length,
                        (int index) => DetailsCard(
                          title: 'Type',
                          information: pokemonDetailsState.pokemon.types[index].name,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (!pokemonDetailsState.isLoading)
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                sliver: SliverToBoxAdapter(
                  child: UnconstrainedBox(
                    child: BlocSelector<PokedexAppCubit, PokedexAppState, PokemonModel?>(
                      bloc: getIt<PokedexAppCubit>(),
                      selector: (state) =>
                          state.capturedPokemons.firstWhereOrNull((pokemon) => pokemon == pokemonDetailsState.pokemon),
                      builder: (context, savedPokemon) => FilledButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Theme.of(context)
                                .extension<ThemeCustomColors>()!
                                .getPokemonTypeColor(savedPokemon?.types.first))),
                        onPressed: () {
                          if (savedPokemon != null) {
                            getIt<PokedexAppCubit>().removePokemon(savedPokemon);
                          } else {
                            getIt<PokedexAppCubit>().addPokemon(pokemonDetailsState.pokemon);
                          }
                        },
                        child: Text(savedPokemon == null ? 'Catch!' : 'Release'),
                      ),
                    ),
                  ),
                ),
              ),
            BottomNavBar.sliverBottomSpacer(),
          ],
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  final String information;
  const DetailsCard({super.key, required this.title, required this.information});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.cardDecorationStyle,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              maxLines: 2,
              information,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Theme.of(context).extension<ThemeCustomColors>()!.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
