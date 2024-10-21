import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/config/style/app_colors.dart';
import 'package:pokedex/core/widgets/bottom_nav_bar.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/presentation/bloc/pokedex_bloc.dart';
import 'package:pokedex/features/pokedex/presentation/widgets/search_field.dart';
import 'package:pokedex/features/summary/presentation/widgets/pokemon_card.dart';
import 'package:pokedex/gen/assets.gen.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  String pokemonSearch = '';

  @override
  Widget build(BuildContext context) {
    final pokedexBloc = getIt<PokedexBloc>();
    // final searchTextController = TextEditingController();
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          title: SearchField(
            hintText: 'Search a pokemon',
            onChanged: (text) {
              setState(() {
                pokemonSearch = text;
              });
            },
          ),
          centerTitle: true,
          pinned: true,
        ),
        BlocBuilder<PokedexBloc, PokedexState>(
          bloc: pokedexBloc,
          builder: (context, state) {
            return state.fetchPokemonsResult.maybeWhen(
              orElse: () => SliverFillRemaining(
                child: Column(
                  children: [
                    LottieBuilder.asset(Assets.lib.resources.media.pokedexLoading),
                    const Text(
                      'Hang on! We\'re working on it...',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              data: (data, cacheExpiration) {
                List<PokemonModel> pokemonsFiltered = data;
                if (pokemonSearch.trim().isNotEmpty) {
                  pokemonsFiltered =
                      data.where((e) => e.name.toLowerCase().contains(pokemonSearch.toLowerCase())).toList();
                }
                return SliverPadding(
                  sliver: SliverList.builder(
                    itemBuilder: (context, index) {
                      return PokemonCard(pokemon: pokemonsFiltered[index]);
                    },
                    itemCount: pokemonsFiltered.length,
                  ),
                  padding: const EdgeInsets.all(8),
                );
              },
              error: (exception) => SliverFillRemaining(
                child: Column(
                  children: [
                    Icon(
                      Icons.error_outline_rounded,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 60,
                    ),
                    const Text(
                      'Oops! Something went wrong',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Error message: ${exception.message}',
                      style: TextStyle(
                        color: Theme.of(context).extension<ThemeCustomColors>()!.body,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        BottomNavBar.sliverBottomSpacer(),
      ],
    );
  }
}