// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PokemonEntityTearOff {
  const _$PokemonEntityTearOff();

  _PokemonEntity call(
      {required String image,
      required double height,
      required double weight,
      required String name,
      required String id,
      required List<String> types}) {
    return _PokemonEntity(
      image: image,
      height: height,
      weight: weight,
      name: name,
      id: id,
      types: types,
    );
  }
}

/// @nodoc
const $PokemonEntity = _$PokemonEntityTearOff();

/// @nodoc
mixin _$PokemonEntity {
  String get image => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonEntityCopyWith<PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonEntityCopyWith<$Res> {
  factory $PokemonEntityCopyWith(
          PokemonEntity value, $Res Function(PokemonEntity) then) =
      _$PokemonEntityCopyWithImpl<$Res>;
  $Res call(
      {String image,
      double height,
      double weight,
      String name,
      String id,
      List<String> types});
}

/// @nodoc
class _$PokemonEntityCopyWithImpl<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  _$PokemonEntityCopyWithImpl(this._value, this._then);

  final PokemonEntity _value;
  // ignore: unused_field
  final $Res Function(PokemonEntity) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonEntityCopyWith<$Res>
    implements $PokemonEntityCopyWith<$Res> {
  factory _$PokemonEntityCopyWith(
          _PokemonEntity value, $Res Function(_PokemonEntity) then) =
      __$PokemonEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String image,
      double height,
      double weight,
      String name,
      String id,
      List<String> types});
}

/// @nodoc
class __$PokemonEntityCopyWithImpl<$Res>
    extends _$PokemonEntityCopyWithImpl<$Res>
    implements _$PokemonEntityCopyWith<$Res> {
  __$PokemonEntityCopyWithImpl(
      _PokemonEntity _value, $Res Function(_PokemonEntity) _then)
      : super(_value, (v) => _then(v as _PokemonEntity));

  @override
  _PokemonEntity get _value => super._value as _PokemonEntity;

  @override
  $Res call({
    Object? image = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? types = freezed,
  }) {
    return _then(_PokemonEntity(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PokemonEntity implements _PokemonEntity {
  const _$_PokemonEntity(
      {required this.image,
      required this.height,
      required this.weight,
      required this.name,
      required this.id,
      required this.types});

  @override
  final String image;
  @override
  final double height;
  @override
  final double weight;
  @override
  final String name;
  @override
  final String id;
  @override
  final List<String> types;

  @override
  String toString() {
    return 'PokemonEntity(image: $image, height: $height, weight: $weight, name: $name, id: $id, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonEntity &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$PokemonEntityCopyWith<_PokemonEntity> get copyWith =>
      __$PokemonEntityCopyWithImpl<_PokemonEntity>(this, _$identity);
}

abstract class _PokemonEntity implements PokemonEntity {
  const factory _PokemonEntity(
      {required String image,
      required double height,
      required double weight,
      required String name,
      required String id,
      required List<String> types}) = _$_PokemonEntity;

  @override
  String get image;
  @override
  double get height;
  @override
  double get weight;
  @override
  String get name;
  @override
  String get id;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$PokemonEntityCopyWith<_PokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
