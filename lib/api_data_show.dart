import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/controller/todo_controller.dart';

class ApiDataShow extends StatelessWidget {
  const ApiDataShow({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TodoController());
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (controller.hasError.value.isNotEmpty) {
          return Center(child: Text(controller.hasError.value));
        }
        final length = controller.todoModels.length;
        return ListView.builder(
          itemCount: length,
          itemBuilder: (context, index) {
            final data = controller.todoModels[index];
            return ListTile(
            title: Text(
              data.title!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              data.completed!.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          );
          },
        );
      }),
    );
  }
}
