import 'package:flutter_starbugs/data/data_source/news_data_source.dart';
import 'package:flutter_starbugs/data/model/news_card_model.dart';
import 'package:flutter_starbugs/data/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsDataSource _dataSource;

  NewsRepositoryImpl(this._dataSource);

  @override
  List<NewsCardModel> getNews() {
    return _dataSource.getNews();
  }
}
