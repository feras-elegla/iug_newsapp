import 'package:flutter/material.dart';
import '/todo_app/data/tasks_data.dart';
import '/todo_app/widgets/task_widget.dart';

// ignore: must_be_immutable
class InCompleteTasksScreen extends StatefulWidget {
  Function fun;
  Function delfun;

  InCompleteTasksScreen(this.fun, this.delfun);

  @override
  State<InCompleteTasksScreen> createState() => _InCompleteTasksScreenState();
}

class _InCompleteTasksScreenState extends State<InCompleteTasksScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList.where((element) => !element.isCompleted).toList()[index], widget.fun, widget.delfun);
        });
  }
}
