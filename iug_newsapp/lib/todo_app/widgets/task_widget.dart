import 'package:flutter/material.dart';
import '/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function delfun;
  Task task;

  TaskWidget(this.task, this.fun, this.delfun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: task.isCompleted ? Colors.green : Colors.black45, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
        secondary: IconButton(
            onPressed: () {
              delfun(task);
            },
            icon: Icon(
              Icons.delete,
              color: Colors.black38,
            )),
      ),
    );
  }
}
