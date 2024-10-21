// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonResponse _$PokemonResponseFromJson(Map<String, dynamic> json) {
  return _PokemonResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonResponse {
  String? get url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  List<PokemonTypeResponse> get types => throw _privateConstructorUsedError;
  Map<String, dynamic>? get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonResponseCopyWith<PokemonResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseCopyWith<$Res> {
  factory $PokemonResponseCopyWith(
          PokemonResponse value, $Res Function(PokemonResponse) then) =
      _$PokemonResponseCopyWithImpl<$Res, PokemonResponse>;
  @useResult
  $Res call(
      {String? url,
      String name,
      int? id,
      int? height,
      int? weight,
      List<PokemonTypeResponse> types,
      Map<String, dynamic>? sprites});
}

/// @nodoc
class _$PokemonResponseCopyWithImpl<$Res, $Val extends PokemonResponse>
    implements $PokemonResponseCopyWith<$Res> {
  _$PokemonResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? name = null,
    Object? id = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = null,
    Object? sprites = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
      sprites: freezed == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonResponseImplCopyWith<$Res>
    implements $PokemonResponseCopyWith<$Res> {
  factory _$$PokemonResponseImplCopyWith(_$PokemonResponseImpl value,
          $Res Function(_$PokemonResponseImpl) then) =
      __$$PokemonResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      String name,
      int? id,
      int? height,
      int? weight,
      List<PokemonTypeResponse> types,
      Map<String, dynamic>? sprites});
}

/// @nodoc
class __$$PokemonResponseImplCopyWithImpl<$Res>
    extends _$PokemonResponseCopyWithImpl<$Res, _$PokemonResponseImpl>
    implements _$$PokemonResponseImplCopyWith<$Res> {
  __$$PokemonResponseImplCopyWithImpl(
      _$PokemonResponseImpl _value, $Res Function(_$PokemonResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? name = null,
    Object? id = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? types = null,
    Object? sprites = freezed,
  }) {
    return _then(_$PokemonResponseImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeResponse>,
      sprites: freezed == sprites
          ? _value._sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonResponseImpl extends _PokemonResponse {
  const _$PokemonResponseImpl(
      {this.url,
      required this.name,
      this.id,
      this.height,
      this.weight,
      final List<PokemonTypeResponse> types = const [],
      final Map<String, dynamic>? sprites})
      : _types = types,
        _sprites = sprites,
        super._();

  factory _$PokemonResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResponseImplFromJson(json);

  @override
  final String? url;
  @override
  final String name;
  @override
  final int? id;
  @override
  final int? height;
  @override
  final int? weight;
  final List<PokemonTypeResponse> _types;
  @override
  @JsonKey()
  List<PokemonTypeResponse> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final Map<String, dynamic>? _sprites;
  @override
  Map<String, dynamic>? get sprites {
    final value = _sprites;
    if (value == null) return null;
    if (_sprites is EqualUnmodifiableMapView) return _sprites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PokemonResponse(url: $url, name: $name, id: $id, height: $height, weight: $weight, types: $types, sprites: $sprites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResponseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._sprites, _sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      name,
      id,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_sprites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResponseImplCopyWith<_$PokemonResponseImpl> get copyWith =>
      __$$PokemonResponseImplCopyWithImpl<_$PokemonResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonResponse extends PokemonResponse {
  const factory _PokemonResponse(
      {final String? url,
      required final String name,
      final int? id,
      final int? height,
      final int? weight,
      final List<PokemonTypeResponse> types,
      final Map<String, dynamic>? sprites}) = _$PokemonResponseImpl;
  const _PokemonResponse._() : super._();

  factory _PokemonResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonResponseImpl.fromJson;

  @override
  String? get url;
  @override
  String get name;
  @override
  int? get id;
  @override
  int? get height;
  @override
  int? get weight;
  @override
  List<PokemonTypeResponse> get types;
  @override
  Map<String, dynamic>? get sprites;
  @override
  @JsonKey(ignore: true)
  _$$PokemonResponseImplCopyWith<_$PokemonResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeResponse _$PokemonTypeResponseFromJson(Map<String, dynamic> json) {
  return _PokemonTypeResponse.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeResponse {
  int get slot => throw _privateConstructorUsedError;
  Map<String, String> get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonTypeResponseCopyWith<PokemonTypeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeResponseCopyWith<$Res> {
  factory $PokemonTypeResponseCopyWith(
          PokemonTypeResponse value, $Res Function(PokemonTypeResponse) then) =
      _$PokemonTypeResponseCopyWithImpl<$Res, PokemonTypeResponse>;
  @useResult
  $Res call({int slot, Map<String, String> type});
}

/// @nodoc
class _$PokemonTypeResponseCopyWithImpl<$Res, $Val extends PokemonTypeResponse>
    implements $PokemonTypeResponseCopyWith<$Res> {
  _$PokemonTypeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypeResponseImplCopyWith<$Res>
    implements $PokemonTypeResponseCopyWith<$Res> {
  factory _$$PokemonTypeResponseImplCopyWith(_$PokemonTypeResponseImpl value,
          $Res Function(_$PokemonTypeResponseImpl) then) =
      __$$PokemonTypeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, Map<String, String> type});
}

/// @nodoc
class __$$PokemonTypeResponseImplCopyWithImpl<$Res>
    extends _$PokemonTypeResponseCopyWithImpl<$Res, _$PokemonTypeResponseImpl>
    implements _$$PokemonTypeResponseImplCopyWith<$Res> {
  __$$PokemonTypeResponseImplCopyWithImpl(_$PokemonTypeResponseImpl _value,
      $Res Function(_$PokemonTypeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeResponseImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeResponseImpl extends _PokemonTypeResponse {
  const _$PokemonTypeResponseImpl(
      {required this.slot, required final Map<String, String> type})
      : _type = type,
        super._();

  factory _$PokemonTypeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeResponseImplFromJson(json);

  @override
  final int slot;
  final Map<String, String> _type;
  @override
  Map<String, String> get type {
    if (_type is EqualUnmodifiableMapView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_type);
  }

  @override
  String toString() {
    return 'PokemonTypeResponse(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeResponseImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, slot, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeResponseImplCopyWith<_$PokemonTypeResponseImpl> get copyWith =>
      __$$PokemonTypeResponseImplCopyWithImpl<_$PokemonTypeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeResponseImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeResponse extends PokemonTypeResponse {
  const factory _PokemonTypeResponse(
      {required final int slot,
      required final Map<String, String> type}) = _$PokemonTypeResponseImpl;
  const _PokemonTypeResponse._() : super._();

  factory _PokemonTypeResponse.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeResponseImpl.fromJson;

  @override
  int get slot;
  @override
  Map<String, String> get type;
  @override
  @JsonKey(ignore: true)
  _$$PokemonTypeResponseImplCopyWith<_$PokemonTypeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
