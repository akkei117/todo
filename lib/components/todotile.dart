import 'package:flutter/material.dart';

class Todotile extends StatefulWidget {
  final String taskname;
  final bool taskcompleted;
  final void Function(bool?)? onChanged;

  const Todotile({
    super.key,
    required this.onChanged,
    required this.taskcompleted,
    required this.taskname,
  });

  @override
  State<Todotile> createState() => _TodotileState();
}

class _TodotileState extends State<Todotile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        color: Colors.yellow,
        child: Row(
          children: [
            //Check box
            Checkbox(value: widget.taskcompleted, onChanged: widget.onChanged , activeColor: Colors.black,),

            //Text (Task)
            Padding(
              padding: EdgeInsetsGeometry.all(25),
              child: Text(widget.taskname),
            ),
          ],
        ),
      ),
    );
  }
}
