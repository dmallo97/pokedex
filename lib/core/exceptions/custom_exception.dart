import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_exception.freezed.dart';
part 'custom_exception.g.dart';

@freezed
sealed class CustomException with _$CustomException implements Exception {
  const factory CustomException.domain({String? message}) = DomainException;
  const factory CustomException.data({required int statusCode, String? message}) = DataException;

  factory CustomException.fromJson(Map<String, dynamic> json) => _$CustomExceptionFromJson(json);
}
