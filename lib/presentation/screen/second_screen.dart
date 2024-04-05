import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_starbugs/data/model/news_card_model.dart';
import 'package:flutter_starbugs/data/repository/event_repository.dart';
import 'package:flutter_starbugs/data/repository/news_repository.dart';
import 'package:flutter_starbugs/presentation/screen/news_card_widget.dart';

import '../../data/model/event_card_model.dart';
import 'event_card_widget.dart';

class SecondScreen extends StatelessWidget {
  final NewsRepository newsRepository;
  final EventRepository eventRepository;

  const SecondScreen({super.key, required this.newsRepository, required this.eventRepository});

  @override
  Widget build(BuildContext context) {
    List<NewsCardModel> news = [];
    List<EventCardModel> events = [];

    news = newsRepository
        .getNews()
        .map((e) => NewsCardModel(
              title: e.title,
              subTitle: e.subTitle,
              image: e.image,
            ))
        .toList();

    events = eventRepository
        .getEvents()
        .map(
          (e) => EventCardModel(
              title: e.title,
              period: e.period,
              backgroundImage: e.backgroundImage,
              description: e.description,
              subDescription: e.subDescription),
        )
        .toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: ImageIcon(
                AssetImage("assets/email.png"),
              ),
              onPressed: () {
                // 메뉴 버튼을 눌렀을 때 수행할 작업
              },
            ),
            actions: <Widget>[
              Text(
                'What\'s New',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: ImageIcon(
                  AssetImage("assets/voucher.png"),
                ),
                onPressed: () {
                  // 검색 버튼을 눌렀을 때 수행할 작업
                },
              ),
              Text(
                'Coupon',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 120,
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  // 알림 버튼을 눌렀을 때 수행할 작업
                },
              ),
            ],
            // 슬리브 앱바 설정
            floating: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.withOpacity(0.8),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [_header(), _news(news), _events(events)],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(''),
        icon: ImageIcon(AssetImage('assets/delivery-man.png')),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'What\'s New',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _news(List<NewsCardModel> news) {
    return SizedBox(
      width: double.infinity,
      height: 350,
      child: PageView(
        children: news.map((e) => NewsCardWidget(news: e)).toList(),
      ),
    );
  }

  Widget _events(List<EventCardModel> events) {
    return SizedBox(
      width: double.infinity,
      height: 900,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          return EventCardWidget(events: events[index]);
        },
      ),
    );
  }
}
