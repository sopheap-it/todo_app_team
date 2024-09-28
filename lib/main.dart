import 'package:flutter/material.dart';
// import 'package:todo_app_team/sarak/todo_ui.dart';
import 'package:todo_app_team/usa/usa_todo_ui.dart';

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
        '/usaTodoUI': (context) => const UsaTodoUI(),
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
          // children: [
          //   const Text('Sarak Todo UI'),
          //   const SizedBox(height: 16),
          //   ElevatedButton(
          //     child: const Text('Go to sarak Todo UI page'),
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const SarakTodoUI(),
          //         ),
          //       );
          //     },
          //   ),
          // ],
          children: [
            const Text('Usa Todo UI'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to Usa Todo UI page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UsaTodoUI(),
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
