// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexStateImpl _$$PokedexStateImplFromJson(Map<String, dynamic> json) =>
    _$PokedexStateImpl(
      fetchPokemonsResult: json['fetchPokemonsResult'] == null
          ? const Initial()
          : _pokemonsResultFromJsonConverter(
              json['fetchPokemonsResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokedexStateImplToJson(_$PokedexStateImpl instance) =>
    <String, dynamic>{
      'fetchPokemonsResult':
          _pokemonsResultToJsonConverter(instance.fetchPokemonsResult),
    };
