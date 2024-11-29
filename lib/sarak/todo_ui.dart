import 'package:flutter/material.dart';
import 'package:todo_app_team/sarak/profile.dart';
import 'package:todo_app_team/sarak/widget/list_widget.dart';
import 'calculator/homeSceen.dart';
import 'package:todo_app_team/sarak/tasks.dart';

import 'exams_screen.dart';

class SarakTodoUI extends StatelessWidget {
  const SarakTodoUI({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buildButton(String text, Widget screen) => ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFB39DDB),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
      child: Text(text, style: const TextStyle(fontSize: 18)),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/book_exam.png', height: 150),
            const SizedBox(height: 30),
            const Text('StudyPal', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFFB39DDB))),
            const Text('Your pocket guide for school.', style: TextStyle(fontSize: 12, color: Colors.grey)),
            const SizedBox(height: 40),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildButton('Begin', const ExamScreen()),
                  const SizedBox(width: 10),
                  buildButton('Task', TaskListScreen()),
                  const SizedBox(width: 10),
                  buildButton('Profile', ProfileScreen()),
                  const SizedBox(width: 10),
                  buildButton('Calculator', CalculatorApp()),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
