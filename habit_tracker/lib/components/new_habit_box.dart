import 'package:flutter/material.dart';

class EnterNewHabitBox extends StatelessWidget {
  const EnterNewHabitBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[700],
      content: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(),
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: (){},
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        ),
        MaterialButton(
          onPressed: (){},
          child: Text(
            "Cancel",
            style: TextStyle(color:Colors.white ),
          ),
          color: Colors.redAccent,
        ),
      ],
    );

  }
}