import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonModel with _$PokemonModel {
  const PokemonModel._();
  const factory PokemonModel({
    required int id,
    required String name,
    String? avatarUrl,
    int? weight,
    int? height,
    @Default([]) List<PokemonTypeModel> types,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);

  factory PokemonModel.createDummy() => const PokemonModel(
        id: -1,
        name: 'dummy pokemon',
        weight: 90,
        height: 90,
        avatarUrl: 'someUrl',
        types: [PokemonTypeModel(id: -1, name: 'someType')],
      );
}

@freezed
class PokemonTypeModel with _$PokemonTypeModel {
  const factory PokemonTypeModel({
    required int id,
    required String name,
  }) = _PokemonTypeModel;

  factory PokemonTypeModel.fromJson(Map<String, dynamic> json) => _$PokemonTypeModelFromJson(json);
}
