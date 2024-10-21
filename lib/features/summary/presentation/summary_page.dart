import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/config/style/app_font_styles.dart';
import 'package:pokedex/core/application_cubit/pokedex_app_cubit.dart';
import 'package:pokedex/features/summary/presentation/widgets/pokemon_card.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokedexAppCubit, PokedexAppState>(
      bloc: getIt<PokedexAppCubit>(),
      builder: (context, state) {
        if (state.capturedPokemons.isEmpty) {
          return Center(
            child: Text(
              'Go catch some pokemons!',
              style: AppFontStyles.getTitleBold,
            ),
          );
        }
        return GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (MediaQuery.of(context).size.width / 130).toInt(),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return PokemonCard(pokemon: state.capturedPokemons[index]);
          },
          itemCount: state.capturedPokemons.length,
        );
      },
    );
  }
}
