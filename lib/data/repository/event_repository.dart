import 'package:flutter_starbugs/data/model/event_card_model.dart';

abstract interface class EventRepository {
  List<EventCardModel> getEvents();
}