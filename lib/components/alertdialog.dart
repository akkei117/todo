import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Alertdialogbox extends StatelessWidget {
  var controller = TextEditingController();
  VoidCallback onsave;
  VoidCallback oncancel;
  Alertdialogbox({super.key , required this.controller , required this.oncancel , required this.onsave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Create a new Task"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextField(controller: controller),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(onPressed: onsave, label: Text("Save")),
            ElevatedButton.icon(onPressed: oncancel , label: Text("Cancel")),
          ],
        ),
      ],
    );
  }
}
