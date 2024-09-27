import 'package:flutter/material.dart';
import 'exams_screen.dart';
class SarakTodoUI extends StatelessWidget {
  const SarakTodoUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/book_exam.png',
              height: 150,
            ),
            const SizedBox(height: 30),
            const Text(
              'StudyPal',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB39DDB),
              ),
            ),
            const Text(
              'Your pocket guide for school.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB39DDB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ExamScreen()),
                );
              },
              child: const Text('Begin', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

