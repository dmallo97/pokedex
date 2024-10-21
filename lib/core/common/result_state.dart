import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/core/exceptions/custom_exception.dart';

part 'result_state.freezed.dart';
part 'result_state.g.dart';

@Freezed(genericArgumentFactories: true)
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.initial() = Initial<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({required T data, DateTime? cacheExpiration}) = Data<T>;

  const factory ResultState.error({required CustomException exception}) = Error<T>;

  factory ResultState.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ResultStateFromJson(json, fromJsonT);
}
