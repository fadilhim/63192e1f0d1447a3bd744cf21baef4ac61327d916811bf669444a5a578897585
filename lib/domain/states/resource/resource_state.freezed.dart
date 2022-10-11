// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResourceStateTearOff {
  const _$ResourceStateTearOff();

  ResourceLoading<T> loading<T>([T? data]) {
    return ResourceLoading<T>(
      data,
    );
  }

  ResourceSuccess<T> success<T>({int? code, String? message, required T data}) {
    return ResourceSuccess<T>(
      code: code,
      message: message,
      data: data,
    );
  }

  ResourceError<T> error<T>({int? code, String? message, T? data}) {
    return ResourceError<T>(
      code: code,
      message: message,
      data: data,
    );
  }
}

/// @nodoc
const $ResourceState = _$ResourceStateTearOff();

/// @nodoc
mixin _$ResourceState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(int? code, String? message, T data) success,
    required TResult Function(int? code, String? message, T? data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceStateCopyWith<T, $Res> {
  factory $ResourceStateCopyWith(
          ResourceState<T> value, $Res Function(ResourceState<T>) then) =
      _$ResourceStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResourceStateCopyWithImpl<T, $Res>
    implements $ResourceStateCopyWith<T, $Res> {
  _$ResourceStateCopyWithImpl(this._value, this._then);

  final ResourceState<T> _value;
  // ignore: unused_field
  final $Res Function(ResourceState<T>) _then;
}

/// @nodoc
abstract class $ResourceLoadingCopyWith<T, $Res> {
  factory $ResourceLoadingCopyWith(
          ResourceLoading<T> value, $Res Function(ResourceLoading<T>) then) =
      _$ResourceLoadingCopyWithImpl<T, $Res>;
  $Res call({T? data});
}

/// @nodoc
class _$ResourceLoadingCopyWithImpl<T, $Res>
    extends _$ResourceStateCopyWithImpl<T, $Res>
    implements $ResourceLoadingCopyWith<T, $Res> {
  _$ResourceLoadingCopyWithImpl(
      ResourceLoading<T> _value, $Res Function(ResourceLoading<T>) _then)
      : super(_value, (v) => _then(v as ResourceLoading<T>));

  @override
  ResourceLoading<T> get _value => super._value as ResourceLoading<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(ResourceLoading<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResourceLoading<T> implements ResourceLoading<T> {
  const _$ResourceLoading([this.data]);

  @override
  final T? data;

  @override
  String toString() {
    return 'ResourceState<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceLoading<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ResourceLoadingCopyWith<T, ResourceLoading<T>> get copyWith =>
      _$ResourceLoadingCopyWithImpl<T, ResourceLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(int? code, String? message, T data) success,
    required TResult Function(int? code, String? message, T? data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResourceLoading<T> implements ResourceState<T> {
  const factory ResourceLoading([T? data]) = _$ResourceLoading<T>;

  T? get data;
  @JsonKey(ignore: true)
  $ResourceLoadingCopyWith<T, ResourceLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceSuccessCopyWith<T, $Res> {
  factory $ResourceSuccessCopyWith(
          ResourceSuccess<T> value, $Res Function(ResourceSuccess<T>) then) =
      _$ResourceSuccessCopyWithImpl<T, $Res>;
  $Res call({int? code, String? message, T data});
}

/// @nodoc
class _$ResourceSuccessCopyWithImpl<T, $Res>
    extends _$ResourceStateCopyWithImpl<T, $Res>
    implements $ResourceSuccessCopyWith<T, $Res> {
  _$ResourceSuccessCopyWithImpl(
      ResourceSuccess<T> _value, $Res Function(ResourceSuccess<T>) _then)
      : super(_value, (v) => _then(v as ResourceSuccess<T>));

  @override
  ResourceSuccess<T> get _value => super._value as ResourceSuccess<T>;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(ResourceSuccess<T>(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResourceSuccess<T> implements ResourceSuccess<T> {
  const _$ResourceSuccess({this.code, this.message, required this.data});

  @override
  final int? code;
  @override
  final String? message;
  @override
  final T data;

  @override
  String toString() {
    return 'ResourceState<$T>.success(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceSuccess<T> &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ResourceSuccessCopyWith<T, ResourceSuccess<T>> get copyWith =>
      _$ResourceSuccessCopyWithImpl<T, ResourceSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(int? code, String? message, T data) success,
    required TResult Function(int? code, String? message, T? data) error,
  }) {
    return success(code, message, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
  }) {
    return success?.call(code, message, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(code, message, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ResourceSuccess<T> implements ResourceState<T> {
  const factory ResourceSuccess({int? code, String? message, required T data}) =
      _$ResourceSuccess<T>;

  int? get code;
  String? get message;
  T get data;
  @JsonKey(ignore: true)
  $ResourceSuccessCopyWith<T, ResourceSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceErrorCopyWith<T, $Res> {
  factory $ResourceErrorCopyWith(
          ResourceError<T> value, $Res Function(ResourceError<T>) then) =
      _$ResourceErrorCopyWithImpl<T, $Res>;
  $Res call({int? code, String? message, T? data});
}

/// @nodoc
class _$ResourceErrorCopyWithImpl<T, $Res>
    extends _$ResourceStateCopyWithImpl<T, $Res>
    implements $ResourceErrorCopyWith<T, $Res> {
  _$ResourceErrorCopyWithImpl(
      ResourceError<T> _value, $Res Function(ResourceError<T>) _then)
      : super(_value, (v) => _then(v as ResourceError<T>));

  @override
  ResourceError<T> get _value => super._value as ResourceError<T>;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(ResourceError<T>(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResourceError<T> implements ResourceError<T> {
  const _$ResourceError({this.code, this.message, this.data});

  @override
  final int? code;
  @override
  final String? message;
  @override
  final T? data;

  @override
  String toString() {
    return 'ResourceState<$T>.error(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceError<T> &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ResourceErrorCopyWith<T, ResourceError<T>> get copyWith =>
      _$ResourceErrorCopyWithImpl<T, ResourceError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) loading,
    required TResult Function(int? code, String? message, T data) success,
    required TResult Function(int? code, String? message, T? data) error,
  }) {
    return error(code, message, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
  }) {
    return error?.call(code, message, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? loading,
    TResult Function(int? code, String? message, T data)? success,
    TResult Function(int? code, String? message, T? data)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(code, message, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceLoading<T> value) loading,
    required TResult Function(ResourceSuccess<T> value) success,
    required TResult Function(ResourceError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceLoading<T> value)? loading,
    TResult Function(ResourceSuccess<T> value)? success,
    TResult Function(ResourceError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResourceError<T> implements ResourceState<T> {
  const factory ResourceError({int? code, String? message, T? data}) =
      _$ResourceError<T>;

  int? get code;
  String? get message;
  T? get data;
  @JsonKey(ignore: true)
  $ResourceErrorCopyWith<T, ResourceError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
