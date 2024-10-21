// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonDetailsState {
  ResultState<PokemonModel> get fetchPokemonDetailsResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailsStateCopyWith<PokemonDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsStateCopyWith<$Res> {
  factory $PokemonDetailsStateCopyWith(
          PokemonDetailsState value, $Res Function(PokemonDetailsState) then) =
      _$PokemonDetailsStateCopyWithImpl<$Res, PokemonDetailsState>;
  @useResult
  $Res call({ResultState<PokemonModel> fetchPokemonDetailsResult});

  $ResultStateCopyWith<PokemonModel, $Res> get fetchPokemonDetailsResult;
}

/// @nodoc
class _$PokemonDetailsStateCopyWithImpl<$Res, $Val extends PokemonDetailsState>
    implements $PokemonDetailsStateCopyWith<$Res> {
  _$PokemonDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPokemonDetailsResult = null,
  }) {
    return _then(_value.copyWith(
      fetchPokemonDetailsResult: null == fetchPokemonDetailsResult
          ? _value.fetchPokemonDetailsResult
          : fetchPokemonDetailsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<PokemonModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultStateCopyWith<PokemonModel, $Res> get fetchPokemonDetailsResult {
    return $ResultStateCopyWith<PokemonModel, $Res>(
        _value.fetchPokemonDetailsResult, (value) {
      return _then(_value.copyWith(fetchPokemonDetailsResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailsStateImplCopyWith<$Res>
    implements $PokemonDetailsStateCopyWith<$Res> {
  factory _$$PokemonDetailsStateImplCopyWith(_$PokemonDetailsStateImpl value,
          $Res Function(_$PokemonDetailsStateImpl) then) =
      __$$PokemonDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResultState<PokemonModel> fetchPokemonDetailsResult});

  @override
  $ResultStateCopyWith<PokemonModel, $Res> get fetchPokemonDetailsResult;
}

/// @nodoc
class __$$PokemonDetailsStateImplCopyWithImpl<$Res>
    extends _$PokemonDetailsStateCopyWithImpl<$Res, _$PokemonDetailsStateImpl>
    implements _$$PokemonDetailsStateImplCopyWith<$Res> {
  __$$PokemonDetailsStateImplCopyWithImpl(_$PokemonDetailsStateImpl _value,
      $Res Function(_$PokemonDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchPokemonDetailsResult = null,
  }) {
    return _then(_$PokemonDetailsStateImpl(
      fetchPokemonDetailsResult: null == fetchPokemonDetailsResult
          ? _value.fetchPokemonDetailsResult
          : fetchPokemonDetailsResult // ignore: cast_nullable_to_non_nullable
              as ResultState<PokemonModel>,
    ));
  }
}

/// @nodoc

class _$PokemonDetailsStateImpl implements _PokemonDetailsState {
  const _$PokemonDetailsStateImpl(
      {this.fetchPokemonDetailsResult = const Loading()});

  @override
  @JsonKey()
  final ResultState<PokemonModel> fetchPokemonDetailsResult;

  @override
  String toString() {
    return 'PokemonDetailsState(fetchPokemonDetailsResult: $fetchPokemonDetailsResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailsStateImpl &&
            (identical(other.fetchPokemonDetailsResult,
                    fetchPokemonDetailsResult) ||
                other.fetchPokemonDetailsResult == fetchPokemonDetailsResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchPokemonDetailsResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailsStateImplCopyWith<_$PokemonDetailsStateImpl> get copyWith =>
      __$$PokemonDetailsStateImplCopyWithImpl<_$PokemonDetailsStateImpl>(
          this, _$identity);
}

abstract class _PokemonDetailsState implements PokemonDetailsState {
  const factory _PokemonDetailsState(
          {final ResultState<PokemonModel> fetchPokemonDetailsResult}) =
      _$PokemonDetailsStateImpl;

  @override
  ResultState<PokemonModel> get fetchPokemonDetailsResult;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailsStateImplCopyWith<_$PokemonDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonDetailsEvent {
  int get pokemonId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pokemonId) fetchPokemonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pokemonId)? fetchPokemonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pokemonId)? fetchPokemonDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPokemonDetails value) fetchPokemonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPokemonDetails value)? fetchPokemonDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPokemonDetails value)? fetchPokemonDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonDetailsEventCopyWith<PokemonDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailsEventCopyWith<$Res> {
  factory $PokemonDetailsEventCopyWith(
          PokemonDetailsEvent value, $Res Function(PokemonDetailsEvent) then) =
      _$PokemonDetailsEventCopyWithImpl<$Res, PokemonDetailsEvent>;
  @useResult
  $Res call({int pokemonId});
}

/// @nodoc
class _$PokemonDetailsEventCopyWithImpl<$Res, $Val extends PokemonDetailsEvent>
    implements $PokemonDetailsEventCopyWith<$Res> {
  _$PokemonDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
  }) {
    return _then(_value.copyWith(
      pokemonId: null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchPokemonDetailsImplCopyWith<$Res>
    implements $PokemonDetailsEventCopyWith<$Res> {
  factory _$$FetchPokemonDetailsImplCopyWith(_$FetchPokemonDetailsImpl value,
          $Res Function(_$FetchPokemonDetailsImpl) then) =
      __$$FetchPokemonDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pokemonId});
}

/// @nodoc
class __$$FetchPokemonDetailsImplCopyWithImpl<$Res>
    extends _$PokemonDetailsEventCopyWithImpl<$Res, _$FetchPokemonDetailsImpl>
    implements _$$FetchPokemonDetailsImplCopyWith<$Res> {
  __$$FetchPokemonDetailsImplCopyWithImpl(_$FetchPokemonDetailsImpl _value,
      $Res Function(_$FetchPokemonDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonId = null,
  }) {
    return _then(_$FetchPokemonDetailsImpl(
      null == pokemonId
          ? _value.pokemonId
          : pokemonId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchPokemonDetailsImpl implements _FetchPokemonDetails {
  const _$FetchPokemonDetailsImpl(this.pokemonId);

  @override
  final int pokemonId;

  @override
  String toString() {
    return 'PokemonDetailsEvent.fetchPokemonDetails(pokemonId: $pokemonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPokemonDetailsImpl &&
            (identical(other.pokemonId, pokemonId) ||
                other.pokemonId == pokemonId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokemonId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPokemonDetailsImplCopyWith<_$FetchPokemonDetailsImpl> get copyWith =>
      __$$FetchPokemonDetailsImplCopyWithImpl<_$FetchPokemonDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pokemonId) fetchPokemonDetails,
  }) {
    return fetchPokemonDetails(pokemonId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pokemonId)? fetchPokemonDetails,
  }) {
    return fetchPokemonDetails?.call(pokemonId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pokemonId)? fetchPokemonDetails,
    required TResult orElse(),
  }) {
    if (fetchPokemonDetails != null) {
      return fetchPokemonDetails(pokemonId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPokemonDetails value) fetchPokemonDetails,
  }) {
    return fetchPokemonDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPokemonDetails value)? fetchPokemonDetails,
  }) {
    return fetchPokemonDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPokemonDetails value)? fetchPokemonDetails,
    required TResult orElse(),
  }) {
    if (fetchPokemonDetails != null) {
      return fetchPokemonDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchPokemonDetails implements PokemonDetailsEvent {
  const factory _FetchPokemonDetails(final int pokemonId) =
      _$FetchPokemonDetailsImpl;

  @override
  int get pokemonId;
  @override
  @JsonKey(ignore: true)
  _$$FetchPokemonDetailsImplCopyWith<_$FetchPokemonDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
