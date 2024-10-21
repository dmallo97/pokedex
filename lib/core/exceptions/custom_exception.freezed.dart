// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomException _$CustomExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'domain':
      return DomainException.fromJson(json);
    case 'data':
      return DataException.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CustomException',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CustomException {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) domain,
    required TResult Function(int statusCode, String? message) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? domain,
    TResult? Function(int statusCode, String? message)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? domain,
    TResult Function(int statusCode, String? message)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DomainException value) domain,
    required TResult Function(DataException value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DomainException value)? domain,
    TResult? Function(DataException value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DomainException value)? domain,
    TResult Function(DataException value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomExceptionCopyWith<CustomException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExceptionCopyWith<$Res> {
  factory $CustomExceptionCopyWith(
          CustomException value, $Res Function(CustomException) then) =
      _$CustomExceptionCopyWithImpl<$Res, CustomException>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$CustomExceptionCopyWithImpl<$Res, $Val extends CustomException>
    implements $CustomExceptionCopyWith<$Res> {
  _$CustomExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DomainExceptionImplCopyWith<$Res>
    implements $CustomExceptionCopyWith<$Res> {
  factory _$$DomainExceptionImplCopyWith(_$DomainExceptionImpl value,
          $Res Function(_$DomainExceptionImpl) then) =
      __$$DomainExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DomainExceptionImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$DomainExceptionImpl>
    implements _$$DomainExceptionImplCopyWith<$Res> {
  __$$DomainExceptionImplCopyWithImpl(
      _$DomainExceptionImpl _value, $Res Function(_$DomainExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DomainExceptionImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DomainExceptionImpl implements DomainException {
  const _$DomainExceptionImpl({this.message, final String? $type})
      : $type = $type ?? 'domain';

  factory _$DomainExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DomainExceptionImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomException.domain(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DomainExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DomainExceptionImplCopyWith<_$DomainExceptionImpl> get copyWith =>
      __$$DomainExceptionImplCopyWithImpl<_$DomainExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) domain,
    required TResult Function(int statusCode, String? message) data,
  }) {
    return domain(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? domain,
    TResult? Function(int statusCode, String? message)? data,
  }) {
    return domain?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? domain,
    TResult Function(int statusCode, String? message)? data,
    required TResult orElse(),
  }) {
    if (domain != null) {
      return domain(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DomainException value) domain,
    required TResult Function(DataException value) data,
  }) {
    return domain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DomainException value)? domain,
    TResult? Function(DataException value)? data,
  }) {
    return domain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DomainException value)? domain,
    TResult Function(DataException value)? data,
    required TResult orElse(),
  }) {
    if (domain != null) {
      return domain(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DomainExceptionImplToJson(
      this,
    );
  }
}

abstract class DomainException implements CustomException {
  const factory DomainException({final String? message}) =
      _$DomainExceptionImpl;

  factory DomainException.fromJson(Map<String, dynamic> json) =
      _$DomainExceptionImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DomainExceptionImplCopyWith<_$DomainExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataExceptionImplCopyWith<$Res>
    implements $CustomExceptionCopyWith<$Res> {
  factory _$$DataExceptionImplCopyWith(
          _$DataExceptionImpl value, $Res Function(_$DataExceptionImpl) then) =
      __$$DataExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String? message});
}

/// @nodoc
class __$$DataExceptionImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$DataExceptionImpl>
    implements _$$DataExceptionImplCopyWith<$Res> {
  __$$DataExceptionImplCopyWithImpl(
      _$DataExceptionImpl _value, $Res Function(_$DataExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = freezed,
  }) {
    return _then(_$DataExceptionImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataExceptionImpl implements DataException {
  const _$DataExceptionImpl(
      {required this.statusCode, this.message, final String? $type})
      : $type = $type ?? 'data';

  factory _$DataExceptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataExceptionImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomException.data(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataExceptionImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataExceptionImplCopyWith<_$DataExceptionImpl> get copyWith =>
      __$$DataExceptionImplCopyWithImpl<_$DataExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) domain,
    required TResult Function(int statusCode, String? message) data,
  }) {
    return data(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? domain,
    TResult? Function(int statusCode, String? message)? data,
  }) {
    return data?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? domain,
    TResult Function(int statusCode, String? message)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DomainException value) domain,
    required TResult Function(DataException value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DomainException value)? domain,
    TResult? Function(DataException value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DomainException value)? domain,
    TResult Function(DataException value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DataExceptionImplToJson(
      this,
    );
  }
}

abstract class DataException implements CustomException {
  const factory DataException(
      {required final int statusCode,
      final String? message}) = _$DataExceptionImpl;

  factory DataException.fromJson(Map<String, dynamic> json) =
      _$DataExceptionImpl.fromJson;

  int get statusCode;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DataExceptionImplCopyWith<_$DataExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
