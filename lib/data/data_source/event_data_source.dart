import '../model/event_card_model.dart';

class EventDataSource {
  List<EventCardModel> getEvents() {
    return [
      const EventCardModel(
        title: '2024 Spring UI clone coding',
        period: '[행사 기간] 4/5(Fri) ~ 4/7(Sun)',
        backgroundImage: 'https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=13156666&filePath=L2Rpc2sxL25ld2RhdGEvMjAxOC8yMS9DTFMxLzEzMTU2NjY2X0NPTENUXzIwMTgxMTI2XzE=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004',
        description: '벚꽃이 핀 봄에 뭐하세요?',
        subDescription: '뭐하긴 ui 클론코딩하죠~',
      ),
      const EventCardModel(
        title: '[안드로이드 컨퍼런스]\n Native vs Flutter 그리고 KMP',
        period: '',
        backgroundImage: 'https://eventusstorage.blob.core.windows.net/evs/Image/ted/79581/ProjectInfo/Cover/685e944598c74ce1881aee8e9bc6c75c.jpg',
        description: '',
        subDescription: '',
      ),
      const EventCardModel(
        title: '',
        period: '',
        backgroundImage: 'https://blog.kakaocdn.net/dn/3FM4k/btsxtUBdeyq/Sh6mmtUj56QcEQ29K6ZHw0/img.png',
        description: '',
        subDescription: '',
      ),
    ];
  }
}
