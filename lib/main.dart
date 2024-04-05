import 'package:flutter/material.dart';
import 'package:flutter_starbugs/data/data_source/event_data_source.dart';
import 'package:flutter_starbugs/data/repository/event_repository_impl.dart';
import 'package:flutter_starbugs/presentation/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(
        eventRepository: EventRepositoryImpl(
          EventDataSource()
        ),
      ),
    );
  }
}
