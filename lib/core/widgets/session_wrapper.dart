import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/config/style/app_colors.dart';
import 'package:pokedex/config/style/app_font_styles.dart';
import 'package:pokedex/core/application_cubit/pokedex_app_cubit.dart';
import 'package:pokedex/core/connectivity/connectivity_check_bloc.dart';

class SessionWrapper extends StatelessWidget {
  const SessionWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SessionShellMainView(child: child);
  }
}

class SessionShellMainView extends StatelessWidget {
  const SessionShellMainView({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCheckBloc, ConnectivityCheckState>(
      bloc: getIt<ConnectivityCheckBloc>(),
      builder: (context, connectivityState) {
        return BlocBuilder<PokedexAppCubit, PokedexAppState>(
          bloc: getIt<PokedexAppCubit>(),
          builder: (context, appState) => Scaffold(
            backgroundColor: Theme.of(context).extension<ThemeCustomColors>()?.background,
            body: SafeArea(
              child: connectivityState.maybeWhen(
                orElse: () {
                  return child;
                },
                notConnectedState: () {
                  return Scaffold(
                    bottomNavigationBar: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
                      child: FilledButton(
                        onPressed: () {
                          getIt<ConnectivityCheckBloc>().add(const ConnectivityCheckEvent.checkConnectivity());
                        },
                        child: const Text('Retry'),
                      ),
                    ),
                    body: SizedBox.expand(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'No internet connection',
                            style: AppFontStyles.getTitleBold,
                          ),
                          Text(
                            'Check your connection and try again',
                            style: AppFontStyles.getBodyReg,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
