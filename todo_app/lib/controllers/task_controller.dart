import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/utils/constants.dart';

class TaskController extends GetxController {
  RxList<Task> taskList = <Task>[].obs;
  late TextEditingController textController;

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
  }

  showDialog() {
    Get.defaultDialog(
      title: "Add Task",
      radius: 6,
      confirm: MaterialButton(
        color: KprimaryYellowColor,
        onPressed: () {
          addTask(textController.text);
          Get.back();
          textController.text = '';
        },
        child: Text(
          "Add",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      cancel: MaterialButton(
        color: Colors.redAccent,
        onPressed: () {
          Get.back();
        },
        child: Text(
          "Cancel",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      content: SizedBox(
        height: Get.height * 0.07,
        child: TextField(
          controller: textController,
          cursorColor: Colors.black87,
          onChanged: (v) {},
          decoration: InputDecoration(
            hintText: "Add a task.....",
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.black87,
            )),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  Box<Task> getTasks() => Hive.box<Task>("tasks");

  addTask(String title) {
    final box = getTasks();
    box.add(
      Task(title: title),
    );
  }

  removeTask(Task curr) {
    curr.delete();
  }
}
