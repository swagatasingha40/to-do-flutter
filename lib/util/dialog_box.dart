import 'package:flutter/material.dart';
import 'package:test/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Cancel', onPressed: onCancel),
                const SizedBox(width: 8),
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                  color: Colors.pink[100],
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.yellow[200],
    );
  }
}
