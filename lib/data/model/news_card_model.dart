import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_card_model.freezed.dart';

@freezed
class NewsCardModel with _$NewsCardModel {
  const factory NewsCardModel({
    required String title,
    required String subTitle,
    required String image
  }) = _NewsCardModel;
}