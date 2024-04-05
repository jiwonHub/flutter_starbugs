import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_card_model.freezed.dart';

@freezed
class EventCardModel with _$EventCardModel {
  const factory EventCardModel({
    required String title,
    required String period,
    required String backgroundImage,
    required String description,
    required String subDescription,
  }) = _EventCardModel;
}