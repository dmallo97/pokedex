import 'package:flutter/material.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';

class AppColors {
  static final searchBarUnfocusedForeground = const Color(0xffFFFFFF).withOpacity(0.5);
  static final searchBarUnfocusedBackground = Colors.black.withOpacity(0.1);
  static final menuButtonUnfocusedForeground = searchBarUnfocusedForeground;
  static final menuButtonUnfocusedBackground = searchBarUnfocusedBackground;

  static const lightBlack = Color(0xff1E1E1E);
  static const bostonUniversityRed = Color(0xffcc0000);
  static const lightGrey = Color(0xffD9D9D9);
  static const darkGrey = Color(0xff949393);
  static const highlight = Color(0xffB9EEFF);
  static const onHighlight = Color(0xff00C2FF);
  static const background = Colors.white;
}

class ThemeCustomColors extends ThemeExtension<ThemeCustomColors> with PokemonColors {
  final Color title;
  final Color body;
  final Color background;
  final Color foreground;
  final Color highlight;
  final Color onHighlight;

  ThemeCustomColors({
    required this.background,
    required this.foreground,
    required this.highlight,
    required this.onHighlight,
    required this.title,
    required this.body,
  }) : super();

  @override
  ThemeExtension<ThemeCustomColors> copyWith({
    Color? title,
    Color? body,
    Color? background,
    Color? foreground,
    Color? highlight,
    Color? onHighlight,
  }) {
    return ThemeCustomColors(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      highlight: highlight ?? this.highlight,
      onHighlight: onHighlight ?? this.onHighlight,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  ThemeExtension<ThemeCustomColors> lerp(covariant ThemeExtension<ThemeCustomColors>? other, double t) {
    if (other is! ThemeCustomColors) {
      return this;
    }
    return ThemeCustomColors(
      background: Color.lerp(background, other.background, t) ?? background,
      foreground: Color.lerp(foreground, other.foreground, t) ?? foreground,
      highlight: Color.lerp(highlight, other.highlight, t) ?? highlight,
      onHighlight: Color.lerp(onHighlight, other.onHighlight, t) ?? onHighlight,
      title: Color.lerp(title, other.title, t) ?? title,
      body: Color.lerp(body, other.body, t) ?? body,
    );
  }
}

mixin PokemonColors {
  Color getPokemonTypeColor(PokemonTypeModel? pokemonType) {
    switch (pokemonType?.name.toLowerCase()) {
      case 'bug':
        return const Color(0xff94BC4A);

      case 'dark':
        return const Color(0xff736C75);

      case 'dragon':
        return const Color(0xff6A7BAF);

      case 'electric':
        return const Color(0xffE5C531);

      case 'fairy':
        return const Color(0xffe397d1);

      case 'fighting':
        return const Color(0xffcb5f48);

      case 'fire':
        return const Color(0xffea7a3c);

      case 'flying':
        return const Color(0xff7da6de);

      case 'ghost':
        return const Color(0xff846ab6);

      case 'grass':
        return const Color(0xff71c558);

      case 'ground':
        return const Color(0xffcc9f4f);

      case 'ice':
        return const Color(0xff70cbd4);

      case 'normal':
        return const Color(0xffaab09f);

      case 'poison':
        return const Color(0xffb468b7);

      case 'psychic':
        return const Color(0xffe5709b);

      case 'rock':
        return const Color(0xffb2a061);

      case 'steel':
        return const Color(0xff89a1b0);

      case 'water':
        return const Color(0xff539ae2);

      default:
        return AppColors.bostonUniversityRed;
    }
  }
}
