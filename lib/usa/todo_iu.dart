import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeTodo(),
    );
  }
}

class HomeTodo extends StatelessWidget {
  const HomeTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ),
      ),
    );
  }
}
