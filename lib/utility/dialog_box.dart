// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todoapp/utility/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Mengatur border radius menjadi 0
      ),
      content: Container(
        height: 120,
        child: Column(
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.yellow,
                ) // Warna border
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.black), // Warna border saat tidak fokus
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.yellow), // Warna border saat fokus
                ),
                hintText: "Add a new task",
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              ),
              style: TextStyle(
                  decoration: TextDecoration
                      .none), // Menghilangkan underline pada teks input
            ),

            // buttons ->  save + cancel
            Row(
              children: [
                // save button
                MyButton(text: "save", onPressed: onSave),
                const SizedBox(width: 8),

                // cancel button
                MyButton(text: "cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
