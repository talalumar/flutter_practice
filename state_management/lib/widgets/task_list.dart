import 'package:flutter/material.dart';
import 'package:state_management/widgets/task_title.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTitle(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: (){
              taskData.deleteTask(task);
            },

          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}