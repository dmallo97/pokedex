// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonResponseImpl _$$PokemonResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonResponseImpl(
      url: json['url'] as String?,
      name: json['name'] as String,
      id: (json['id'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      weight: (json['weight'] as num?)?.toInt(),
      types: (json['types'] as List<dynamic>?)
              ?.map((e) =>
                  PokemonTypeResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      sprites: json['sprites'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PokemonResponseImplToJson(
        _$PokemonResponseImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'id': instance.id,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.sprites,
    };

_$PokemonTypeResponseImpl _$$PokemonTypeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeResponseImpl(
      slot: (json['slot'] as num).toInt(),
      type: Map<String, String>.from(json['type'] as Map),
    );

Map<String, dynamic> _$$PokemonTypeResponseImplToJson(
        _$PokemonTypeResponseImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
