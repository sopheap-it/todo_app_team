
import 'package:flutter/material.dart';

class UsaTodoUI extends StatelessWidget {
  const UsaTodoUI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usa Todo UI'),
      ),
      body: const Center(
        child: Text('TODO'),
      ),
    );
  }
}
