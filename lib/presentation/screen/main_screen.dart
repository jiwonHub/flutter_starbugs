import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_starbugs/data/data_source/event_data_source.dart';
import 'package:flutter_starbugs/data/data_source/news_data_source.dart';
import 'package:flutter_starbugs/data/model/event_card_model.dart';
import 'package:flutter_starbugs/data/repository/event_repository.dart';
import 'package:flutter_starbugs/data/repository/event_repository_impl.dart';
import 'package:flutter_starbugs/data/repository/news_repository_impl.dart';
import 'package:flutter_starbugs/presentation/screen/event_card_widget.dart';
import 'package:flutter_starbugs/presentation/screen/second_screen.dart';

class MainScreen extends StatefulWidget {
  final EventRepository eventRepository;

  const MainScreen({super.key, required this.eventRepository});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<EventCardModel> events = [];
  int _selectedIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior = NavigationDestinationLabelBehavior.alwaysShow;

  @override
  void initState() {
    super.initState();
    events = widget.eventRepository
        .getEvents()
        .map((e) => EventCardModel(
              title: e.title,
              period: e.period,
              backgroundImage: e.backgroundImage,
              description: e.description,
              subDescription: e.subDescription,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://cdn.crowdpic.net/detail-thumb/thumb_d_C1CA18B8706ADA39E83110589D515AD3.jpg",
                ),
                Positioned(
                  bottom: 0,
                  left: 30,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    child: const Text(
                      '스타벅스 케이크 가지고 \n벚꽃구경 가요~',
                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            _levelInfo(),
            _evnetCard()
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.payment_rounded),
            label: 'pay',
          ),
          NavigationDestination(
            icon: ImageIcon(AssetImage("assets/coffee.png")),
            label: 'Order',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: ImageIcon(AssetImage("assets/ellipsis.png")),
            label: 'Other',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondScreen(
                      newsRepository: NewsRepositoryImpl(
                        NewsDataSource(),
                      ),
                      eventRepository: EventRepositoryImpl(
                        EventDataSource(),
                      ),
                    )),
          );
        },
        label: Text(
          'Delivers',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 20,
        icon: ImageIcon(
          AssetImage("assets/delivery-man.png"),
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget _levelInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [_starLevel(), _buttons()],
      ),
    );
  }

  Widget _starLevel() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Row(
                children: [
                  Text(
                    '1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.star),
                  Text(
                    'until Green Level',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 300,
                height: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: const LinearProgressIndicator(
                    value: 0.8,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            '4',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '/5',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _buttons() {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          ImageIcon(
            AssetImage("assets/email.png"),
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'What\'s New',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ImageIcon(
            AssetImage("assets/voucher.png"),
            color: Colors.black,
            size: 40,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Coupon',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Icon(
            Icons.notifications_none,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget _evnetCard() {
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
