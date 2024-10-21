// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_pokemons_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPokemonsResponseImpl _$$GetPokemonsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPokemonsResponseImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => PokemonResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetPokemonsResponseImplToJson(
        _$GetPokemonsResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
