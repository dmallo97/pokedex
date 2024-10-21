// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DomainExceptionImpl _$$DomainExceptionImplFromJson(
        Map<String, dynamic> json) =>
    _$DomainExceptionImpl(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DomainExceptionImplToJson(
        _$DomainExceptionImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$DataExceptionImpl _$$DataExceptionImplFromJson(Map<String, dynamic> json) =>
    _$DataExceptionImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DataExceptionImplToJson(_$DataExceptionImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
