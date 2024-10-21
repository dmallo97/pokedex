import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/common/base_dto_response.dart';
import 'package:pokedex/features/pokedex/domain/model/pokemon_model.dart';

part 'pokemon_response.freezed.dart';
part 'pokemon_response.g.dart';

@freezed
class PokemonResponse with _$PokemonResponse implements BaseDtoResponse<PokemonModel> {
  const PokemonResponse._();
  const factory PokemonResponse({
    String? url,
    required String name,
    int? id,
    int? height,
    int? weight,
    @Default([]) List<PokemonTypeResponse> types,
    Map<String, dynamic>? sprites,
  }) = _PokemonResponse;

  factory PokemonResponse.fromJson(Map<String, dynamic> json) => _$PokemonResponseFromJson(json);

  @override
  PokemonModel toDomainModel() {
    final getId = url?.split('/') ?? [];
    getId.removeWhere((element) => element.isEmpty);
    return PokemonModel(
      id: id ?? int.parse(getId.last),
      name: name,
      avatarUrl: sprites?['front_default'],
      height: height,
      types: types.map((e) => e.toDomainModel()).toList(),
    );
  }
}

@freezed
class PokemonTypeResponse with _$PokemonTypeResponse implements BaseDtoResponse<PokemonTypeModel> {
  const PokemonTypeResponse._();
  const factory PokemonTypeResponse({
    required int slot,
    required Map<String, String> type,
  }) = _PokemonTypeResponse;

  factory PokemonTypeResponse.fromJson(Map<String, dynamic> json) => _$PokemonTypeResponseFromJson(json);

  @override
  PokemonTypeModel toDomainModel() {
    final getId = (type['url'] as String).split('/');
    getId.removeWhere((element) => element.isEmpty);
    return PokemonTypeModel(
      id: int.parse(getId.last),
      name: type['name']!,
    );
  }
}
