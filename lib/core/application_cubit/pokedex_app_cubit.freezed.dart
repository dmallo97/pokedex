// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokedexAppState _$PokedexAppStateFromJson(Map<String, dynamic> json) {
  return _PokedexAppState.fromJson(json);
}

/// @nodoc
mixin _$PokedexAppState {
  List<PokemonModel> get capturedPokemons => throw _privateConstructorUsedError;
  OrderType get orderBy => throw _privateConstructorUsedError;
  PokemonTypeModel? get mostCapturedPokemonType =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexAppStateCopyWith<PokedexAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexAppStateCopyWith<$Res> {
  factory $PokedexAppStateCopyWith(
          PokedexAppState value, $Res Function(PokedexAppState) then) =
      _$PokedexAppStateCopyWithImpl<$Res, PokedexAppState>;
  @useResult
  $Res call(
      {List<PokemonModel> capturedPokemons,
      OrderType orderBy,
      PokemonTypeModel? mostCapturedPokemonType});

  $PokemonTypeModelCopyWith<$Res>? get mostCapturedPokemonType;
}

/// @nodoc
class _$PokedexAppStateCopyWithImpl<$Res, $Val extends PokedexAppState>
    implements $PokedexAppStateCopyWith<$Res> {
  _$PokedexAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capturedPokemons = null,
    Object? orderBy = null,
    Object? mostCapturedPokemonType = freezed,
  }) {
    return _then(_value.copyWith(
      capturedPokemons: null == capturedPokemons
          ? _value.capturedPokemons
          : capturedPokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as OrderType,
      mostCapturedPokemonType: freezed == mostCapturedPokemonType
          ? _value.mostCapturedPokemonType
          : mostCapturedPokemonType // ignore: cast_nullable_to_non_nullable
              as PokemonTypeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonTypeModelCopyWith<$Res>? get mostCapturedPokemonType {
    if (_value.mostCapturedPokemonType == null) {
      return null;
    }

    return $PokemonTypeModelCopyWith<$Res>(_value.mostCapturedPokemonType!,
        (value) {
      return _then(_value.copyWith(mostCapturedPokemonType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokedexAppStateImplCopyWith<$Res>
    implements $PokedexAppStateCopyWith<$Res> {
  factory _$$PokedexAppStateImplCopyWith(_$PokedexAppStateImpl value,
          $Res Function(_$PokedexAppStateImpl) then) =
      __$$PokedexAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PokemonModel> capturedPokemons,
      OrderType orderBy,
      PokemonTypeModel? mostCapturedPokemonType});

  @override
  $PokemonTypeModelCopyWith<$Res>? get mostCapturedPokemonType;
}

/// @nodoc
class __$$PokedexAppStateImplCopyWithImpl<$Res>
    extends _$PokedexAppStateCopyWithImpl<$Res, _$PokedexAppStateImpl>
    implements _$$PokedexAppStateImplCopyWith<$Res> {
  __$$PokedexAppStateImplCopyWithImpl(
      _$PokedexAppStateImpl _value, $Res Function(_$PokedexAppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capturedPokemons = null,
    Object? orderBy = null,
    Object? mostCapturedPokemonType = freezed,
  }) {
    return _then(_$PokedexAppStateImpl(
      capturedPokemons: null == capturedPokemons
          ? _value._capturedPokemons
          : capturedPokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as OrderType,
      mostCapturedPokemonType: freezed == mostCapturedPokemonType
          ? _value.mostCapturedPokemonType
          : mostCapturedPokemonType // ignore: cast_nullable_to_non_nullable
              as PokemonTypeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexAppStateImpl implements _PokedexAppState {
  const _$PokedexAppStateImpl(
      {final List<PokemonModel> capturedPokemons = const [],
      this.orderBy = OrderType.byId,
      this.mostCapturedPokemonType})
      : _capturedPokemons = capturedPokemons;

  factory _$PokedexAppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexAppStateImplFromJson(json);

  final List<PokemonModel> _capturedPokemons;
  @override
  @JsonKey()
  List<PokemonModel> get capturedPokemons {
    if (_capturedPokemons is EqualUnmodifiableListView)
      return _capturedPokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capturedPokemons);
  }

  @override
  @JsonKey()
  final OrderType orderBy;
  @override
  final PokemonTypeModel? mostCapturedPokemonType;

  @override
  String toString() {
    return 'PokedexAppState(capturedPokemons: $capturedPokemons, orderBy: $orderBy, mostCapturedPokemonType: $mostCapturedPokemonType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexAppStateImpl &&
            const DeepCollectionEquality()
                .equals(other._capturedPokemons, _capturedPokemons) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(
                    other.mostCapturedPokemonType, mostCapturedPokemonType) ||
                other.mostCapturedPokemonType == mostCapturedPokemonType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_capturedPokemons),
      orderBy,
      mostCapturedPokemonType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexAppStateImplCopyWith<_$PokedexAppStateImpl> get copyWith =>
      __$$PokedexAppStateImplCopyWithImpl<_$PokedexAppStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexAppStateImplToJson(
      this,
    );
  }
}

abstract class _PokedexAppState implements PokedexAppState {
  const factory _PokedexAppState(
      {final List<PokemonModel> capturedPokemons,
      final OrderType orderBy,
      final PokemonTypeModel? mostCapturedPokemonType}) = _$PokedexAppStateImpl;

  factory _PokedexAppState.fromJson(Map<String, dynamic> json) =
      _$PokedexAppStateImpl.fromJson;

  @override
  List<PokemonModel> get capturedPokemons;
  @override
  OrderType get orderBy;
  @override
  PokemonTypeModel? get mostCapturedPokemonType;
  @override
  @JsonKey(ignore: true)
  _$$PokedexAppStateImplCopyWith<_$PokedexAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
