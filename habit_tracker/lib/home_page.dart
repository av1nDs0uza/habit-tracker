import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_tile.dart';
import 'package:habit_tracker/components/my_fab.dart';
import 'package:habit_tracker/components/new_habit_box.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // data structure for todays list
  List todaysHabitList = [
    // [habitName, habitCompleted ]
    ["Morinig Run", false],
    ["Read Book", false],
    ["Code App", false],
  ];
  

  // checkbox tapped
  void checkBoxTapped(bool? value, int index ) {
    setState(() {
      todaysHabitList[index][1] = value;
    });

  }

  // create a new habit 
  void createNewHabit() {
    // show alert dialog for user to enter the new habit details
    showDialog(
      context: context, 
      builder: (context){
        return EnterNewHabitBox();
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: myFloatingActionButton(onPressed:createNewHabit),
      body: ListView.builder(
        itemCount:todaysHabitList.length,
        itemBuilder:(context, index ) {
          return HabitTile(
            habitName: todaysHabitList[index][0],
            habitCompleted: todaysHabitList[index][1], 
            onChanged: (value) => checkBoxTapped(value, index),
            );
        }
       
      ),
    );
  }
}
