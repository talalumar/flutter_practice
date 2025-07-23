import 'package:flutter/material.dart';


class TaskTitle extends StatelessWidget {

  final bool? isChecked;
  final String? taskTitle;
  final Function? checkboxCallback;
  final VoidCallback? longPressCallback;

  TaskTitle({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text( taskTitle!,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue){
          checkboxCallback!(newValue);
        },
      ),
    );
  }
}



