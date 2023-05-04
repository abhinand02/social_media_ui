// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) updateIndex,
    required TResult Function(Uint8List? image) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int newIndex)? updateIndex,
    TResult? Function(Uint8List? image)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? updateIndex,
    TResult Function(Uint8List? image)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateIndex value) updateIndex,
    required TResult Function(PickImage value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateIndex value)? updateIndex,
    TResult? Function(PickImage value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateIndex value)? updateIndex,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateIndexCopyWith<$Res> {
  factory _$$UpdateIndexCopyWith(
          _$UpdateIndex value, $Res Function(_$UpdateIndex) then) =
      __$$UpdateIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int newIndex});
}

/// @nodoc
class __$$UpdateIndexCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateIndex>
    implements _$$UpdateIndexCopyWith<$Res> {
  __$$UpdateIndexCopyWithImpl(
      _$UpdateIndex _value, $Res Function(_$UpdateIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newIndex = null,
  }) {
    return _then(_$UpdateIndex(
      newIndex: null == newIndex
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateIndex implements UpdateIndex {
  const _$UpdateIndex({required this.newIndex});

  @override
  final int newIndex;

  @override
  String toString() {
    return 'HomeEvent.updateIndex(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateIndex &&
            (identical(other.newIndex, newIndex) ||
                other.newIndex == newIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateIndexCopyWith<_$UpdateIndex> get copyWith =>
      __$$UpdateIndexCopyWithImpl<_$UpdateIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) updateIndex,
    required TResult Function(Uint8List? image) pickImage,
  }) {
    return updateIndex(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int newIndex)? updateIndex,
    TResult? Function(Uint8List? image)? pickImage,
  }) {
    return updateIndex?.call(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? updateIndex,
    TResult Function(Uint8List? image)? pickImage,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateIndex value) updateIndex,
    required TResult Function(PickImage value) pickImage,
  }) {
    return updateIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateIndex value)? updateIndex,
    TResult? Function(PickImage value)? pickImage,
  }) {
    return updateIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateIndex value)? updateIndex,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (updateIndex != null) {
      return updateIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateIndex implements HomeEvent {
  const factory UpdateIndex({required final int newIndex}) = _$UpdateIndex;

  int get newIndex;
  @JsonKey(ignore: true)
  _$$UpdateIndexCopyWith<_$UpdateIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageCopyWith<$Res> {
  factory _$$PickImageCopyWith(
          _$PickImage value, $Res Function(_$PickImage) then) =
      __$$PickImageCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List? image});
}

/// @nodoc
class __$$PickImageCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PickImage>
    implements _$$PickImageCopyWith<$Res> {
  __$$PickImageCopyWithImpl(
      _$PickImage _value, $Res Function(_$PickImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$PickImage(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$PickImage implements PickImage {
  const _$PickImage({required this.image});

  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'HomeEvent.pickImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickImage &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickImageCopyWith<_$PickImage> get copyWith =>
      __$$PickImageCopyWithImpl<_$PickImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) updateIndex,
    required TResult Function(Uint8List? image) pickImage,
  }) {
    return pickImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int newIndex)? updateIndex,
    TResult? Function(Uint8List? image)? pickImage,
  }) {
    return pickImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? updateIndex,
    TResult Function(Uint8List? image)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateIndex value) updateIndex,
    required TResult Function(PickImage value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateIndex value)? updateIndex,
    TResult? Function(PickImage value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateIndex value)? updateIndex,
    TResult Function(PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImage implements HomeEvent {
  const factory PickImage({required final Uint8List? image}) = _$PickImage;

  Uint8List? get image;
  @JsonKey(ignore: true)
  _$$PickImageCopyWith<_$PickImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  int get index => throw _privateConstructorUsedError;
  Uint8List? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({int index, Uint8List? image});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, Uint8List? image});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? image = freezed,
  }) {
    return _then(_$_Initial(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.index, required this.image});

  @override
  final int index;
  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'HomeState(index: $index, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final int index, required final Uint8List? image}) = _$_Initial;

  @override
  int get index;
  @override
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
