import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todoapp extends StatelessWidget {
  Todoapp(
      {super.key,
      required this.deleteFunction,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged});
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
          )
        ]),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(0)),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(
              children: [
                Checkbox(
                  value: taskComplete,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
                Text(
                  taskName,
                  style: TextStyle(
                      decoration: taskComplete
                          ? TextDecoration.lineThrough
                          : TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
