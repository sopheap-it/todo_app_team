import 'package:flutter/material.dart';

class ScreenAddTask extends StatelessWidget {
  const ScreenAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "New Task",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Image.asset(
                'assets/images/cross.png',
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                hintText: 'What need to be done?',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    width: 2.0,
                  ),
                ),
              ),
              maxLines: 5,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                hintText: 'What need to be done?',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    width: 2.0,
                  ),
                ),
              ),
              maxLines: 1,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
