import 'package:flutter_starbugs/data/model/news_card_model.dart';

class NewsDataSource {
  List<NewsCardModel> getNews() {
    return [
      const NewsCardModel(
        title: '환구단 역사성 되새겨 \'박물관\'이 된 카페',
        subTitle: '모습이 장관입니다',
        image: 'https://newsimg.sedaily.com/2022/09/18/26B4F1WDGM_1.jpg',
      ),
      const NewsCardModel(
        title: 'T익스프레스 보다 줄이 긴 스타벅스',
        subTitle: '저는 못기다립니다',
        image: 'https://ppss.kr/wp-content/uploads/2021/11/01-31-540x276.jpg',
      ),
      const NewsCardModel(
        title: '스타벅스 전국 10대 매장',
        subTitle: '모습이 장관입니다',
        image: 'https://image.zdnet.co.kr/2023/12/26/505560b77dc0615327a095367eb6b5ad.png',
      ),
    ];
  }
}
