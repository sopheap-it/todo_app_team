import 'package:flutter/material.dart';
import 'package:todo_app_team/sothearith/docket.dart';
import 'package:todo_app_team/sothearith/profile.dart';

void main() {
  runApp(const MainApp());
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
            const Text('Docket UI str'),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Go to UI'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Dockets(),
                  ),
                );
              },
            ),
            const Text('Profile Setting UI str'),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 77, 125, 255),
              ),
              child: const Text('Go to profile setting'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileSetting(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
