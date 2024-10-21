import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/config/di/injection.dart';
import 'package:pokedex/config/style/app_colors.dart';
import 'package:pokedex/core/application_cubit/pokedex_app_cubit.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.controller,
  });

  final void Function(String)? onChanged;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocSelector<PokedexAppCubit, PokedexAppState, Color>(
        bloc: getIt<PokedexAppCubit>(),
        selector: (state) =>
            Theme.of(context).extension<ThemeCustomColors>()!.getPokemonTypeColor(state.mostCapturedPokemonType),
        builder: (context, color) => TextField(
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17.5),
              borderSide: BorderSide(
                width: 1,
                style: BorderStyle.solid,
                color: color,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17.5),
              borderSide: const BorderSide(
                width: 1,
                style: BorderStyle.solid,
                color: AppColors.darkGrey,
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(10.0, 1.0, 5.0, 0.0),
            prefixIcon: const Padding(
              padding: EdgeInsets.all(13),
              child: Icon(
                Icons.search,
              ),
            ),
            prefixIconColor: WidgetStateColor.resolveWith((states) {
              if (states.any((state) => state == WidgetState.focused)) {
                return color;
              } else {
                return AppColors.darkGrey;
              }
            }),
            labelStyle: TextStyle(
              color: color,
            ),
            hintStyle: const TextStyle(fontSize: 17, color: AppColors.darkGrey, fontWeight: FontWeight.normal),
            hintText: hintText,
          ),
          textInputAction: TextInputAction.search,
        ),
      ),
    );
  }
}
