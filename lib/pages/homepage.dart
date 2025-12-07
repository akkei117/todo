import 'package:flutter/material.dart';
import 'package:todo/components/todotile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List todoList = [
    ["Make the OS notes", false],
    ["Play badminton", false],
    ["Play badminton", true],
  ];

  void checkChange(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text(
          "To-Do",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Todotile(
            onChanged: (value) => checkChange(value , index),//this is the code required 
            taskcompleted: todoList[index][1],
            taskname: todoList[index][0],
          );
        },
      ),
    );
  }
}
