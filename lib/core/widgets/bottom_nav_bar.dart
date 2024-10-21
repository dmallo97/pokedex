import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/config/style/app_colors.dart';
import 'package:pokedex/config/style/app_font_styles.dart';
import 'package:pokedex/core/application_cubit/pokedex_app_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.items,
  });

  final List<BottomNavBarItem> items;
  static const double navBarClearance = 100;

  @override
  Widget build(BuildContext context) {
    final navBarMargin = MediaQuery.of(context).size.width / 8;
    return Container(
      height: 48,
      margin: EdgeInsets.only(
        left: navBarMargin,
        right: navBarMargin,
        bottom: navBarMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            offset: const Offset(0, 6),
            color: Colors.black.withOpacity(0.24),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: items,
      ),
    );
  }

  static SliverToBoxAdapter sliverBottomSpacer() => const SliverToBoxAdapter(
        child: SizedBox(
          height: navBarClearance,
        ),
      );

  static SizedBox bottomSpacer() => const SizedBox(
        height: navBarClearance,
      );
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    required this.isSelected,
  });

  final Widget? icon;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  BoxDecoration? itemBackgroundDecoration(BuildContext context, PokedexAppState appState) {
    Color backgroundColor;
    if (appState.mostCapturedPokemonType != null) {
      backgroundColor =
          Theme.of(context).extension<ThemeCustomColors>()!.getPokemonTypeColor(appState.mostCapturedPokemonType);
    } else {
      backgroundColor = Theme.of(context).colorScheme.primary;
    }
    return isSelected
        ? BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(50),
          )
        : null;
  }

  TextStyle itemTextStyle(BuildContext context, PokedexAppState appState) {
    final textStyle = AppFontStyles.getBodySemiBold.copyWith(fontSize: 14);
    Color textColor;
    if (appState.mostCapturedPokemonType != null) {
      textColor =
          Theme.of(context).extension<ThemeCustomColors>()!.getPokemonTypeColor(appState.mostCapturedPokemonType);
    } else {
      textColor = Theme.of(context).colorScheme.primary;
    }
    return isSelected
        ? textStyle.copyWith(color: Theme.of(context).colorScheme.onPrimary)
        : textStyle.copyWith(color: textColor);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokedexAppCubit, PokedexAppState>(
      bloc: getIt<PokedexAppCubit>(),
      builder: (context, state) {
        return Expanded(
          child: InkWell(
            onTap: onTap,
            child: Container(
                margin: const EdgeInsets.all(4),
                alignment: Alignment.center,
                decoration: itemBackgroundDecoration(context, state),
                padding: const EdgeInsets.all(8),
                child: icon != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox.square(
                            dimension: 14,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                itemTextStyle(context, state).color!,
                                BlendMode.srcIn,
                              ),
                              child: icon,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Text(
                              label,
                              overflow: TextOverflow.ellipsis,
                              style: itemTextStyle(context, state),
                            ),
                          ),
                        ],
                      )
                    : Center(
                        child: Text(
                          label,
                          overflow: TextOverflow.ellipsis,
                          style: itemTextStyle(context, state),
                        ),
                      )),
          ),
        );
      },
    );
  }
}
