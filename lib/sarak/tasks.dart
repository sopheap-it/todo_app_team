import 'package:flutter/material.dart';
import 'package:todo_app_team/sarak/weather.dart';


class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          TaskCard(task: 'Declutter desk and organize drawers', date: '15 January 2024 10:00 AM'),
          TaskCard(task: 'Research and try a new recipe for dinner at night', date: '16 January 2024 8:00 PM'),
          TaskCard(task: 'Water and care for your indoor plants', date: '18 January 2024 6:00 AM'),
          TaskCard(task: 'Write down three personal goals for the upcoming month', date: '25 January 2024 10:00 AM'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
            //កន្លែងដាក់ new file
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  WeatherScean()),
          );
        },
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final String task;
  final String date;
  TaskCard({required this.task, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(task),
        subtitle: Text(date),
        trailing: Icon(Icons.check),
      ),
    );
  }
}
