import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  VoidCallback onPressed;

  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // color: Theme.of(context).primaryColor,
      color: color ?? Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
