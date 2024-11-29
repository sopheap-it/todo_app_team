import 'package:flutter/material.dart';

// Create a placeholder for the next screen
class NextScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Screen')),
      body: const Center(
        child: Text('Welcome to the next screen!'),
      ),
    );
  }
}
