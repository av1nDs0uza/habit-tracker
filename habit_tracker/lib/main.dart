import 'package:flutter/material.dart';
import 'package:habit_tracker/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  //initialize hive
  await Hive.initFlutter();

  // open a box
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Habit tracker'),
      theme: ThemeData(
        primarySwatch: Colors.green
        ),
    );
  }
}
