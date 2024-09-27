import 'package:flutter/material.dart';

class SarakTodoUI extends StatelessWidget {
  const SarakTodoUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sarak Todo UI'),
      ),
      body: const Center(
        child: Text('TODO'),
      ),
    );
  }
}
