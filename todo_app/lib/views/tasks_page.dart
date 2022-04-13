import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/controllers/task_controller.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/utils/constants.dart';
import 'package:todo_app/utils/responsive_template.dart';
import 'package:todo_app/views/custom_widgets/task_tile.dart';

class TaskPage extends StatelessWidget {
  final taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryYellowColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: taskController.showDialog,
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
      body: ResponsiveTemplate(builder: (context, size) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: size.height * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tasks",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: size.height * 0.028,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Divider(
                  height: size.height * 0.05,
                  color: Colors.black,
                  thickness: 1.2,
                ),
                Expanded(
                  child: ValueListenableBuilder<Box<Task>>(
                    valueListenable: taskController.getTasks().listenable(),
                    builder: (context, box, _) {
                      final taskList = box.values.toList().cast<Task>();
                      return taskList.length == 0
                          ? Center(child: Text("No pending Tasks"))
                          : ListView.builder(
                              itemCount: taskList.length,
                              itemBuilder: (context, index) {
                                return TaskTile(
                                  currTask: taskList[index],
                                );
                              },
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
