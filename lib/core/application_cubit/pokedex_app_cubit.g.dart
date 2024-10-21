// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_app_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexAppStateImpl _$$PokedexAppStateImplFromJson(
        Map<String, dynamic> json) =>
    _$PokedexAppStateImpl(
      capturedPokemons: (json['capturedPokemons'] as List<dynamic>?)
              ?.map((e) => PokemonModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderBy: $enumDecodeNullable(_$OrderTypeEnumMap, json['orderBy']) ??
          OrderType.byId,
      mostCapturedPokemonType: json['mostCapturedPokemonType'] == null
          ? null
          : PokemonTypeModel.fromJson(
              json['mostCapturedPokemonType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokedexAppStateImplToJson(
        _$PokedexAppStateImpl instance) =>
    <String, dynamic>{
      'capturedPokemons': instance.capturedPokemons,
      'orderBy': _$OrderTypeEnumMap[instance.orderBy]!,
      'mostCapturedPokemonType': instance.mostCapturedPokemonType,
    };

const _$OrderTypeEnumMap = {
  OrderType.alphabetically: 'alphabetically',
  OrderType.byId: 'byId',
  OrderType.byPokemonType: 'byPokemonType',
};
