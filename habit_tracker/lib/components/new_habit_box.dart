import 'package:flutter/material.dart';

class EnterNewHabitBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const EnterNewHabitBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[700],
      content: TextField(
        style: TextStyle(color: Color.fromRGBO(255,255,255,1)),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
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