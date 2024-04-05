// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsCardModel {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsCardModelCopyWith<NewsCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCardModelCopyWith<$Res> {
  factory $NewsCardModelCopyWith(
          NewsCardModel value, $Res Function(NewsCardModel) then) =
      _$NewsCardModelCopyWithImpl<$Res, NewsCardModel>;
  @useResult
  $Res call({String title, String subTitle, String image});
}

/// @nodoc
class _$NewsCardModelCopyWithImpl<$Res, $Val extends NewsCardModel>
    implements $NewsCardModelCopyWith<$Res> {
  _$NewsCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsCardModelImplCopyWith<$Res>
    implements $NewsCardModelCopyWith<$Res> {
  factory _$$NewsCardModelImplCopyWith(
          _$NewsCardModelImpl value, $Res Function(_$NewsCardModelImpl) then) =
      __$$NewsCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subTitle, String image});
}

/// @nodoc
class __$$NewsCardModelImplCopyWithImpl<$Res>
    extends _$NewsCardModelCopyWithImpl<$Res, _$NewsCardModelImpl>
    implements _$$NewsCardModelImplCopyWith<$Res> {
  __$$NewsCardModelImplCopyWithImpl(
      _$NewsCardModelImpl _value, $Res Function(_$NewsCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
  }) {
    return _then(_$NewsCardModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsCardModelImpl implements _NewsCardModel {
  const _$NewsCardModelImpl(
      {required this.title, required this.subTitle, required this.image});

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final String image;

  @override
  String toString() {
    return 'NewsCardModel(title: $title, subTitle: $subTitle, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsCardModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsCardModelImplCopyWith<_$NewsCardModelImpl> get copyWith =>
      __$$NewsCardModelImplCopyWithImpl<_$NewsCardModelImpl>(this, _$identity);
}

abstract class _NewsCardModel implements NewsCardModel {
  const factory _NewsCardModel(
      {required final String title,
      required final String subTitle,
      required final String image}) = _$NewsCardModelImpl;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$NewsCardModelImplCopyWith<_$NewsCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
