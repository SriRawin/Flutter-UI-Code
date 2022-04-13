import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/utils/responsive_template.dart';

class TaskTile extends StatelessWidget {
  final Task currTask;
  TaskTile({required this.currTask});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TaskController());
    final isDone = currTask.isCompleted.obs;

    return ResponsiveTemplate(builder: (context, size) {
      return Row(
        children: [
          Obx(() {
            return Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.black87,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: isDone.value,
              onChanged: (v) async {
                isDone.value = true;
                await Future.delayed(
                  Duration(seconds: 1),
                );
                controller.removeTask(currTask);
              },
            );
          }),
          Obx(() {
            return Text(
              currTask.title,
              style: TextStyle(
                decoration: isDone.value == true
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.024,
              ),
            );
          }),
          Spacer(),
          IconButton(
            onPressed: () {
              controller.removeTask(currTask);
            },
            icon: Icon(
              Icons.delete,
              size: size.height * 0.028,
              color: Colors.black87,
            ),
          ),
        ],
      );
    });
  }
}
