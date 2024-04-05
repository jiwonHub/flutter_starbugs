import 'package:flutter_starbugs/data/data_source/event_data_source.dart';
import 'package:flutter_starbugs/data/model/event_card_model.dart';
import 'package:flutter_starbugs/data/repository/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final EventDataSource _dataSource;

  EventRepositoryImpl(this._dataSource);

  @override
  List<EventCardModel> getEvents() {
    return _dataSource.getEvents();
  }
}