import 'package:flutter/material.dart';

class myFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;


  const myFloatingActionButton({
    super.key,
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(Icons.add),
    );
  }
}