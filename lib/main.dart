import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_team/kheavsokhan/calculator/calculator.dart';
import 'package:todo_app_team/kheavsokhan/provider/counter_model.dart';
import 'package:todo_app_team/kheavsokhan/provider/home_provider.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/screen/welcome_screen.dart';
import 'package:todo_app_team/kheavsokhan/ui_todo_list/NewTodo.dart';
import 'package:todo_app_team/sarak/todo_ui.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/sarakTodoUI': (context) => const SarakTodoUI(),
      },
      // home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sarak Todo UI
            const Text('Sarak Todo UI'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to sarak Todo UI page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SarakTodoUI(),
                  ),
                );
              },
            ),

            // Sokhan Todo UI
            const Text('Sokhan Todo UI'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to Sokhan Todo UI page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Newtodo(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Go to Sokhan News App'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Go to Sokhan Calculator'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Calculator(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Go to Sokhan Provider'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeProvider(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
