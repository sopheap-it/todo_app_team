import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_team/kheavsokhan/provider/test1/home_provider.dart';
import 'package:todo_app_team/kheavsokhan/provider/todo_app/save_task.dart';
import 'package:todo_app_team/kheavsokhan/provider/todo_app/task_model.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Add Todo', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controller,
              autofocus: true,
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white), // Set text color to white
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(

              onPressed: () {
                context.read<SaveTask>().addTask(
                  Task(
                      title: controller.text,
                    isCompleted: false
                  ),
                );
                controller.clear();
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}