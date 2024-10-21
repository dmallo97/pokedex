// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokedexEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPokemons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPokemons value) getPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPokemons value)? getPokemons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPokemons value)? getPokemons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexEventCopyWith<$Res> {
  factory $PokedexEventCopyWith(
          PokedexEvent value, $Res Function(PokedexEvent) then) =
      _$PokedexEventCopyWithImpl<$Res, PokedexEvent>;
}

/// @nodoc
class _$PokedexEventCopyWithImpl<$Res, $Val extends PokedexEvent>
    implements $PokedexEventCopyWith<$Res> {
  _$PokedexEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPokemonsImplCopyWith<$Res> {
  factory _$$GetPokemonsImplCopyWith(
          _$GetPokemonsImpl value, $Res Function(_$GetPokemonsImpl) then) =
      __$$GetPokemonsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPokemonsImplCopyWithImpl<$Res>
    extends _$PokedexEventCopyWithImpl<$Res, _$GetPokemonsImpl>
    implements _$$GetPokemonsImplCopyWith<$Res> {
  __$$GetPokemonsImplCopyWithImpl(
      _$GetPokemonsImpl _value, $Res Function(_$GetPokemonsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPokemonsImpl implements _GetPokemons {
  const _$GetPokemonsImpl();

  @override
  String toString() {
    return 'PokedexEvent.getPokemons()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPokemonsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPokemons,
  }) {
    return getPokemons();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPokemons,
  }) {
    return getPokemons?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPokemons,
    required TResult orElse(),
  }) {
    if (getPokemons != null) {
      return getPokemons();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPokemons value) getPokemons,
  }) {
    return getPokemons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPokemons value)? getPokemons,
  }) {
    return getPokemons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPokemons value)? getPokemons,
    required TResult orElse(),
  }) {
    if (getPokemons != null) {
      return getPokemons(this);
    }
    return orElse();
  }
}

abstract class _GetPokemons implements PokedexEvent {
  const factory _GetPokemons() = _$GetPokemonsImpl;
}

PokedexState _$PokedexStateFromJson(Map<String, dynamic> json) {
  return _PokedexState.fromJson(json);
}

/// @nodoc
mixin _$PokedexState {
  @JsonKey(
      fromJson: _pokemonsResultFromJsonConverter,
      toJson: _pokemonsResultToJsonConverter)
  ResultState<List<PokemonModel>> get fetchPokemonsResult =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexStateCopyWith<PokedexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res, PokedexState>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: _pokemonsResultFromJsonConverter,
          toJson: _pokemonsResultToJsonConverter)
      ResultState<List<PokemonModel>> fetchPokemonsResult});

  $ResultStateCopyWith<List<PokemonModel>, $Res> get fetchPokemonsResult;
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res, $Val extends PokedexState>
    implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPokemonsResult = null,
  }) {
    return _then(_value.copyWith(
      fetchPokemonsResult: null == fetchPokemonsResult
          ? _value.fetchPokemonsResult
          : fetchPokemonsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<PokemonModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<List<PokemonModel>, $Res> get fetchPokemonsResult {
    return $ResultStateCopyWith<List<PokemonModel>, $Res>(
        _value.fetchPokemonsResult, (value) {
      return _then(_value.copyWith(fetchPokemonsResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokedexStateImplCopyWith<$Res>
    implements $PokedexStateCopyWith<$Res> {
  factory _$$PokedexStateImplCopyWith(
          _$PokedexStateImpl value, $Res Function(_$PokedexStateImpl) then) =
      __$$PokedexStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: _pokemonsResultFromJsonConverter,
          toJson: _pokemonsResultToJsonConverter)
      ResultState<List<PokemonModel>> fetchPokemonsResult});

  @override
  $ResultStateCopyWith<List<PokemonModel>, $Res> get fetchPokemonsResult;
}

/// @nodoc
class __$$PokedexStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexStateImpl>
    implements _$$PokedexStateImplCopyWith<$Res> {
  __$$PokedexStateImplCopyWithImpl(
      _$PokedexStateImpl _value, $Res Function(_$PokedexStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPokemonsResult = null,
  }) {
    return _then(_$PokedexStateImpl(
      fetchPokemonsResult: null == fetchPokemonsResult
          ? _value.fetchPokemonsResult
          : fetchPokemonsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<List<PokemonModel>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexStateImpl implements _PokedexState {
  const _$PokedexStateImpl(
      {@JsonKey(
          fromJson: _pokemonsResultFromJsonConverter,
          toJson: _pokemonsResultToJsonConverter)
      this.fetchPokemonsResult = const Initial()});

  factory _$PokedexStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexStateImplFromJson(json);

  @override
  @JsonKey(
      fromJson: _pokemonsResultFromJsonConverter,
      toJson: _pokemonsResultToJsonConverter)
  final ResultState<List<PokemonModel>> fetchPokemonsResult;

  @override
  String toString() {
    return 'PokedexState(fetchPokemonsResult: $fetchPokemonsResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexStateImpl &&
            (identical(other.fetchPokemonsResult, fetchPokemonsResult) ||
                other.fetchPokemonsResult == fetchPokemonsResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fetchPokemonsResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexStateImplCopyWith<_$PokedexStateImpl> get copyWith =>
      __$$PokedexStateImplCopyWithImpl<_$PokedexStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexStateImplToJson(
      this,
    );
  }
}

abstract class _PokedexState implements PokedexState {
  const factory _PokedexState(
          {@JsonKey(
              fromJson: _pokemonsResultFromJsonConverter,
              toJson: _pokemonsResultToJsonConverter)
          final ResultState<List<PokemonModel>> fetchPokemonsResult}) =
      _$PokedexStateImpl;

  factory _PokedexState.fromJson(Map<String, dynamic> json) =
      _$PokedexStateImpl.fromJson;

  @override
  @JsonKey(
      fromJson: _pokemonsResultFromJsonConverter,
      toJson: _pokemonsResultToJsonConverter)
  ResultState<List<PokemonModel>> get fetchPokemonsResult;
  @override
  @JsonKey(ignore: true)
  _$$PokedexStateImplCopyWith<_$PokedexStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
