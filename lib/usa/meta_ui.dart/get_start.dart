import 'package:flutter/material.dart';
import 'package:todo_app_team/usa/meta_ui.dart/home_screen.dart';

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
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/megazine.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const Positioned(
            bottom: 70,
            left: 20,
            right:30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Text(
                  "Don't Miss What Happens In Another Part of The World",
                  textAlign: TextAlign.start, 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                ),
                SizedBox(height: 10,),
                Text(
                  "Here see watch something in the world using Tidings and share it with your family or friends.",
                  textAlign: TextAlign.start, 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                  softWrap: true,
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),

          Positioned(
            bottom: 10,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 11),
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
