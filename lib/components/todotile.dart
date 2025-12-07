import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Todotile extends StatefulWidget {
  final String taskname;
  final bool taskcompleted;
  final void Function(BuildContext) deletefxn;

  final void Function(bool?)? onChanged;
  


  const Todotile({
    super.key,
    required this.onChanged,
    required this.taskcompleted,
    required this.taskname,
    required this.deletefxn
    
  });

  @override
  State<Todotile> createState() => _TodotileState();
}

class _TodotileState extends State<Todotile> {

  
  void Function(BuildContext)? deletefxn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          openThreshold: 0.1,
          closeThreshold: 0.3,
          children: [
            SlidableAction(onPressed: deletefxn,backgroundColor: Colors.red,icon: LucideIcons.trash2,)
          ],
        ),
        child: Container(
          color: Colors.yellow,
          child: Row(
            children: [
              //Check box
              Checkbox(
                value: widget.taskcompleted,
                onChanged: widget.onChanged,
                activeColor: Colors.black,
              ),

              //Text (Task)
              Padding(
                padding: EdgeInsetsGeometry.all(25),
                child: Text(
                  widget.taskname,
                  style: TextStyle(
                    decoration: widget.taskcompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
