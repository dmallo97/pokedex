import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/config/routes.dart';
import 'package:pokedex/config/style/app_styles.dart';
import 'package:pokedex/core/extensions/string_extensions.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';


class PokemonCard extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  Widget buildContent() {
    final title = Text(
      pokemon.name.capitalize(),
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
    if (pokemon.avatarUrl != null) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CachedNetworkImage(
            imageUrl: pokemon.avatarUrl!,
            height: 60,
            fit: BoxFit.contain,
            placeholder: (context, url) => Container(color: Colors.transparent),
            errorWidget: (context, url, error) => Container(color: Colors.transparent),
            cacheManager: CacheManager(Config(
              pokemon.avatarUrl!,
              stalePeriod: const Duration(hours: 24),
            )),
          ),
          title,
        ],
      );
    } else {
      return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
          child: title,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.cardDecorationStyle,
      constraints: const BoxConstraints(minHeight: 60),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        borderRadius: AppStyles.cardDecorationStyle.borderRadius,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            context.pushNamed(Routes.pokemonDetails, extra: pokemon);
          },
          child: buildContent(),
        ),
      ),
    );
  }
}