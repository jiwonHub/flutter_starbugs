import '../model/news_card_model.dart';

abstract interface class NewsRepository {
  List<NewsCardModel> getNews();
}