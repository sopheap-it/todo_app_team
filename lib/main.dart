import 'package:flutter/material.dart';
import 'package:todo_app_team/sarak/todo_ui.dart';
import 'package:todo_app_team/sothearith/todolist_ui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/sarakTodoUI': (context) => const SarakTodoUI(),
        '/RithAdricUI': (context) => const RithAdricUI(),
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
            const Text('Sarak Todo UI'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to sarak Todo-List UI page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SarakTodoUI(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const Text('Rith Adric Todo-List UI'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to Rith Adric Todo-List UI page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RithAdricUI(),
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
