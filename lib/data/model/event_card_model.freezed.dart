// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventCardModel {
  String get title => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  String get backgroundImage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get subDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCardModelCopyWith<EventCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCardModelCopyWith<$Res> {
  factory $EventCardModelCopyWith(
          EventCardModel value, $Res Function(EventCardModel) then) =
      _$EventCardModelCopyWithImpl<$Res, EventCardModel>;
  @useResult
  $Res call(
      {String title,
      String period,
      String backgroundImage,
      String description,
      String subDescription});
}

/// @nodoc
class _$EventCardModelCopyWithImpl<$Res, $Val extends EventCardModel>
    implements $EventCardModelCopyWith<$Res> {
  _$EventCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? period = null,
    Object? backgroundImage = null,
    Object? description = null,
    Object? subDescription = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subDescription: null == subDescription
          ? _value.subDescription
          : subDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventCardModelImplCopyWith<$Res>
    implements $EventCardModelCopyWith<$Res> {
  factory _$$EventCardModelImplCopyWith(_$EventCardModelImpl value,
          $Res Function(_$EventCardModelImpl) then) =
      __$$EventCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String period,
      String backgroundImage,
      String description,
      String subDescription});
}

/// @nodoc
class __$$EventCardModelImplCopyWithImpl<$Res>
    extends _$EventCardModelCopyWithImpl<$Res, _$EventCardModelImpl>
    implements _$$EventCardModelImplCopyWith<$Res> {
  __$$EventCardModelImplCopyWithImpl(
      _$EventCardModelImpl _value, $Res Function(_$EventCardModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? period = null,
    Object? backgroundImage = null,
    Object? description = null,
    Object? subDescription = null,
  }) {
    return _then(_$EventCardModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: null == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subDescription: null == subDescription
          ? _value.subDescription
          : subDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventCardModelImpl implements _EventCardModel {
  const _$EventCardModelImpl(
      {required this.title,
      required this.period,
      required this.backgroundImage,
      required this.description,
      required this.subDescription});

  @override
  final String title;
  @override
  final String period;
  @override
  final String backgroundImage;
  @override
  final String description;
  @override
  final String subDescription;

  @override
  String toString() {
    return 'EventCardModel(title: $title, period: $period, backgroundImage: $backgroundImage, description: $description, subDescription: $subDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventCardModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.subDescription, subDescription) ||
                other.subDescription == subDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, period, backgroundImage, description, subDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventCardModelImplCopyWith<_$EventCardModelImpl> get copyWith =>
      __$$EventCardModelImplCopyWithImpl<_$EventCardModelImpl>(
          this, _$identity);
}

abstract class _EventCardModel implements EventCardModel {
  const factory _EventCardModel(
      {required final String title,
      required final String period,
      required final String backgroundImage,
      required final String description,
      required final String subDescription}) = _$EventCardModelImpl;

  @override
  String get title;
  @override
  String get period;
  @override
  String get backgroundImage;
  @override
  String get description;
  @override
  String get subDescription;
  @override
  @JsonKey(ignore: true)
  _$$EventCardModelImplCopyWith<_$EventCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
