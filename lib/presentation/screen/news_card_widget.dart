import 'package:flutter/material.dart';
import 'package:flutter_starbugs/data/model/news_card_model.dart';

class NewsCardWidget extends StatelessWidget {
  final NewsCardModel news;

  const NewsCardWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Image.network(
              news.image,
              width: double.infinity,
              height: 250,
            ),
            Text(
              news.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              news.subTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
