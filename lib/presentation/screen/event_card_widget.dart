import 'package:flutter/material.dart';
import 'package:flutter_starbugs/data/model/event_card_model.dart';

class EventCardWidget extends StatelessWidget {
  final EventCardModel events;

  const EventCardWidget({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Stack(
            children: [
              Image.network(
                events.backgroundImage,
                width: double.infinity,
                height: 250,
              ),
              Positioned(
                top: 10,
                left: 30,
                child: Text(
                  events.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 30,
                child: Text(
                  events.period,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 30,
                child: Text(
                  events.description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 30,
                child: Text(
                  events.subDescription,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
