// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonListResponseModel _$PokemonListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonListResponseModel.fromJson(json);
}

/// @nodoc
class _$PokemonListResponseModelTearOff {
  const _$PokemonListResponseModelTearOff();

  _PokemonListResponseModel call(
      {@JsonKey(name: 'pokemons') required List<PokemonModel> data}) {
    return _PokemonListResponseModel(
      data: data,
    );
  }

  PokemonListResponseModel fromJson(Map<String, Object?> json) {
    return PokemonListResponseModel.fromJson(json);
  }
}

/// @nodoc
const $PokemonListResponseModel = _$PokemonListResponseModelTearOff();

/// @nodoc
mixin _$PokemonListResponseModel {
  @JsonKey(name: 'pokemons')
  List<PokemonModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListResponseModelCopyWith<PokemonListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListResponseModelCopyWith<$Res> {
  factory $PokemonListResponseModelCopyWith(PokemonListResponseModel value,
          $Res Function(PokemonListResponseModel) then) =
      _$PokemonListResponseModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'pokemons') List<PokemonModel> data});
}

/// @nodoc
class _$PokemonListResponseModelCopyWithImpl<$Res>
    implements $PokemonListResponseModelCopyWith<$Res> {
  _$PokemonListResponseModelCopyWithImpl(this._value, this._then);

  final PokemonListResponseModel _value;
  // ignore: unused_field
  final $Res Function(PokemonListResponseModel) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
    ));
  }
}

/// @nodoc
abstract class _$PokemonListResponseModelCopyWith<$Res>
    implements $PokemonListResponseModelCopyWith<$Res> {
  factory _$PokemonListResponseModelCopyWith(_PokemonListResponseModel value,
          $Res Function(_PokemonListResponseModel) then) =
      __$PokemonListResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'pokemons') List<PokemonModel> data});
}

/// @nodoc
class __$PokemonListResponseModelCopyWithImpl<$Res>
    extends _$PokemonListResponseModelCopyWithImpl<$Res>
    implements _$PokemonListResponseModelCopyWith<$Res> {
  __$PokemonListResponseModelCopyWithImpl(_PokemonListResponseModel _value,
      $Res Function(_PokemonListResponseModel) _then)
      : super(_value, (v) => _then(v as _PokemonListResponseModel));

  @override
  _PokemonListResponseModel get _value =>
      super._value as _PokemonListResponseModel;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PokemonListResponseModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonListResponseModel implements _PokemonListResponseModel {
  const _$_PokemonListResponseModel(
      {@JsonKey(name: 'pokemons') required this.data});

  factory _$_PokemonListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonListResponseModelFromJson(json);

  @override
  @JsonKey(name: 'pokemons')
  final List<PokemonModel> data;

  @override
  String toString() {
    return 'PokemonListResponseModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonListResponseModel &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PokemonListResponseModelCopyWith<_PokemonListResponseModel> get copyWith =>
      __$PokemonListResponseModelCopyWithImpl<_PokemonListResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonListResponseModelToJson(this);
  }
}

abstract class _PokemonListResponseModel implements PokemonListResponseModel {
  const factory _PokemonListResponseModel(
          {@JsonKey(name: 'pokemons') required List<PokemonModel> data}) =
      _$_PokemonListResponseModel;

  factory _PokemonListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonListResponseModel.fromJson;

  @override
  @JsonKey(name: 'pokemons')
  List<PokemonModel> get data;
  @override
  @JsonKey(ignore: true)
  _$PokemonListResponseModelCopyWith<_PokemonListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
class _$PokemonModelTearOff {
  const _$PokemonModelTearOff();

  _PokemonModel call(
      {@JsonKey(name: 'file_name') required String image,
      required double height,
      required double weight,
      @JsonKey(name: 'pokemon_name') required String name,
      @JsonKey(name: 'pokemon_type_id') required String types,
      @JsonKey(name: 'zukan_id') required String id}) {
    return _PokemonModel(
      image: image,
      height: height,
      weight: weight,
      name: name,
      types: types,
      id: id,
    );
  }

  PokemonModel fromJson(Map<String, Object?> json) {
    return PokemonModel.fromJson(json);
  }
}

/// @nodoc
const $PokemonModel = _$PokemonModelTearOff();

/// @nodoc
mixin _$PokemonModel {
  @JsonKey(name: 'file_name')
  String get image => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'pokemon_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pokemon_type_id')
  String get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'zukan_id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'file_name') String image,
      double height,
      double weight,
      @JsonKey(name: 'pokemon_name') String name,
      @JsonKey(name: 'pokemon_type_id') String types,
      @JsonKey(name: 'zukan_id') String id});
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res> implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  final PokemonModel _value;
  // ignore: unused_field
  final $Res Function(PokemonModel) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? name = freezed,
    Object? types = freezed,
    Object? id = freezed,
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
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PokemonModelCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$PokemonModelCopyWith(
          _PokemonModel value, $Res Function(_PokemonModel) then) =
      __$PokemonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'file_name') String image,
      double height,
      double weight,
      @JsonKey(name: 'pokemon_name') String name,
      @JsonKey(name: 'pokemon_type_id') String types,
      @JsonKey(name: 'zukan_id') String id});
}

/// @nodoc
class __$PokemonModelCopyWithImpl<$Res> extends _$PokemonModelCopyWithImpl<$Res>
    implements _$PokemonModelCopyWith<$Res> {
  __$PokemonModelCopyWithImpl(
      _PokemonModel _value, $Res Function(_PokemonModel) _then)
      : super(_value, (v) => _then(v as _PokemonModel));

  @override
  _PokemonModel get _value => super._value as _PokemonModel;

  @override
  $Res call({
    Object? image = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? name = freezed,
    Object? types = freezed,
    Object? id = freezed,
  }) {
    return _then(_PokemonModel(
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
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonModel implements _PokemonModel {
  const _$_PokemonModel(
      {@JsonKey(name: 'file_name') required this.image,
      required this.height,
      required this.weight,
      @JsonKey(name: 'pokemon_name') required this.name,
      @JsonKey(name: 'pokemon_type_id') required this.types,
      @JsonKey(name: 'zukan_id') required this.id});

  factory _$_PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonModelFromJson(json);

  @override
  @JsonKey(name: 'file_name')
  final String image;
  @override
  final double height;
  @override
  final double weight;
  @override
  @JsonKey(name: 'pokemon_name')
  final String name;
  @override
  @JsonKey(name: 'pokemon_type_id')
  final String types;
  @override
  @JsonKey(name: 'zukan_id')
  final String id;

  @override
  String toString() {
    return 'PokemonModel(image: $image, height: $height, weight: $weight, name: $name, types: $types, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PokemonModel &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PokemonModelCopyWith<_PokemonModel> get copyWith =>
      __$PokemonModelCopyWithImpl<_PokemonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonModelToJson(this);
  }
}

abstract class _PokemonModel implements PokemonModel {
  const factory _PokemonModel(
      {@JsonKey(name: 'file_name') required String image,
      required double height,
      required double weight,
      @JsonKey(name: 'pokemon_name') required String name,
      @JsonKey(name: 'pokemon_type_id') required String types,
      @JsonKey(name: 'zukan_id') required String id}) = _$_PokemonModel;

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonModel.fromJson;

  @override
  @JsonKey(name: 'file_name')
  String get image;
  @override
  double get height;
  @override
  double get weight;
  @override
  @JsonKey(name: 'pokemon_name')
  String get name;
  @override
  @JsonKey(name: 'pokemon_type_id')
  String get types;
  @override
  @JsonKey(name: 'zukan_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$PokemonModelCopyWith<_PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
