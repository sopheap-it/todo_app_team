import 'package:flutter/material.dart';
import 'package:todo_app_team/usa/todo_Task_UI/task_screen.dart';

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
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TaskScreen()));},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/docker.png',width: 100,height: 100,),
              const Text('Docket',style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),),
            ],
          )
        ),
      ),
    );
  }
}
