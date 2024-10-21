// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl<T> _$$InitialImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$InitialImpl<T>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson<T>(
  _$InitialImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingImpl<T> _$$LoadingImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$LoadingImpl<T>(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingImplToJson<T>(
  _$LoadingImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DataImpl<T> _$$DataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$DataImpl<T>(
      data: fromJsonT(json['data']),
      cacheExpiration: json['cacheExpiration'] == null
          ? null
          : DateTime.parse(json['cacheExpiration'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson<T>(
  _$DataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'cacheExpiration': instance.cacheExpiration?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$ErrorImpl<T> _$$ErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ErrorImpl<T>(
      exception:
          CustomException.fromJson(json['exception'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson<T>(
  _$ErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'exception': instance.exception,
      'runtimeType': instance.$type,
    };
