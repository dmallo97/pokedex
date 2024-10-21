// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pokemons_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPokemonsResponse _$GetPokemonsResponseFromJson(Map<String, dynamic> json) {
  return _GetPokemonsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPokemonsResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonResponse> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPokemonsResponseCopyWith<GetPokemonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPokemonsResponseCopyWith<$Res> {
  factory $GetPokemonsResponseCopyWith(
          GetPokemonsResponse value, $Res Function(GetPokemonsResponse) then) =
      _$GetPokemonsResponseCopyWithImpl<$Res, GetPokemonsResponse>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PokemonResponse> results});
}

/// @nodoc
class _$GetPokemonsResponseCopyWithImpl<$Res, $Val extends GetPokemonsResponse>
    implements $GetPokemonsResponseCopyWith<$Res> {
  _$GetPokemonsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPokemonsResponseImplCopyWith<$Res>
    implements $GetPokemonsResponseCopyWith<$Res> {
  factory _$$GetPokemonsResponseImplCopyWith(_$GetPokemonsResponseImpl value,
          $Res Function(_$GetPokemonsResponseImpl) then) =
      __$$GetPokemonsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PokemonResponse> results});
}

/// @nodoc
class __$$GetPokemonsResponseImplCopyWithImpl<$Res>
    extends _$GetPokemonsResponseCopyWithImpl<$Res, _$GetPokemonsResponseImpl>
    implements _$$GetPokemonsResponseImplCopyWith<$Res> {
  __$$GetPokemonsResponseImplCopyWithImpl(_$GetPokemonsResponseImpl _value,
      $Res Function(_$GetPokemonsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$GetPokemonsResponseImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPokemonsResponseImpl extends _GetPokemonsResponse {
  const _$GetPokemonsResponseImpl(
      {this.count,
      this.next,
      this.previous,
      final List<PokemonResponse> results = const []})
      : _results = results,
        super._();

  factory _$GetPokemonsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPokemonsResponseImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonResponse> _results;
  @override
  @JsonKey()
  List<PokemonResponse> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'GetPokemonsResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPokemonsResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPokemonsResponseImplCopyWith<_$GetPokemonsResponseImpl> get copyWith =>
      __$$GetPokemonsResponseImplCopyWithImpl<_$GetPokemonsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPokemonsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPokemonsResponse extends GetPokemonsResponse {
  const factory _GetPokemonsResponse(
      {final int? count,
      final String? next,
      final String? previous,
      final List<PokemonResponse> results}) = _$GetPokemonsResponseImpl;
  const _GetPokemonsResponse._() : super._();

  factory _GetPokemonsResponse.fromJson(Map<String, dynamic> json) =
      _$GetPokemonsResponseImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonResponse> get results;
  @override
  @JsonKey(ignore: true)
  _$$GetPokemonsResponseImplCopyWith<_$GetPokemonsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
