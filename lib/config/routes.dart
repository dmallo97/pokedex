import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/core/widgets/nav_bar_container.dart';
import 'package:pokedex/core/widgets/session_wrapper.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';
import 'package:pokedex/features/pokedex/presentation/bloc/pokemon_details_bloc.dart';
import 'package:pokedex/features/pokedex/presentation/pokemon_details.dart';
import 'package:pokedex/features/pokedex/presentation/pokemon_list.dart';
import 'package:pokedex/features/summary/presentation/summary_page.dart';

class Routes {
  static const summary = 'summary';
  static const pokedex = 'pokedex';
  static const pokemonDetails = 'pokemon-details';
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _mainNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'main');
final _pokedexNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'pokedex');
final _summaryNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'summary');

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/summary',
  routes: routes,
);

final routes = <RouteBase>[
  ShellRoute(
    navigatorKey: _mainNavigatorKey,
    builder: (context, state, child) => SessionWrapper(child: child),
    routes: [
      StatefulShellRoute(
        parentNavigatorKey: _mainNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: _summaryNavigatorKey,
            initialLocation: '/summary',
            routes: [
              GoRoute(
                path: '/summary',
                name: Routes.summary,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: SummaryPage());
                },
              )
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _pokedexNavigatorKey,
            initialLocation: '/pokedex',
            routes: [
              GoRoute(
                path: '/pokedex',
                name: Routes.pokedex,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: PokemonList());
                },
              ),
              GoRoute(
                path: '/pokemon-details',
                name: Routes.pokemonDetails,
                pageBuilder: (context, state) {
                  final pokemon = state.extra as PokemonModel;
                  return NoTransitionPage(
                    child: BlocProvider(
                      create: (context) => getIt.get<PokemonDetailsBloc>(param1: pokemon.id),
                      child: PokemonDetails(pokemon: pokemon),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
        navigatorContainerBuilder: (context, navigationShell, children) =>
            NavBarContainer(navigationShell: navigationShell, children: children),
        builder: (context, state, navigationShell) => navigationShell,
      ),
    ],
  ),
];
