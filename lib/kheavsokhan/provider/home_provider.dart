import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_team/kheavsokhan/provider/counter_model.dart';

class HomeProvider extends StatefulWidget {
  const HomeProvider({super.key});

  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Test Provider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.count.toString()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Access the CounterModel and increment the counter
            context.read<CounterModel>().counter();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
