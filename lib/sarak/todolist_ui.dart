import 'package:flutter/material.dart';
import 'package:todo_app_team/sarak/todo_ui.dart';

class TodolistUi extends StatelessWidget {
  const TodolistUi({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tasks = [
      {"title": "Do exercise", "time": "6:00 am", "completed": true},
      {"title": "Buy Vegetable", "time": "8:00 am", "completed": true},
      {"title": "Make veg salad", "time": "10:00 am", "completed": true},
      {"title": "Go to shopping", "time": "11:00 am", "completed": false},
      {"title": "Pay Bills", "time": "2:00 pm", "completed": false},
      {"title": "Go to walking", "time": "6:00 pm", "completed": false},
      {"title": "Check email", "time": "7:00 pm", "completed": false},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text(
          "Todo List",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SarakTodoUI()),
            );
          },

          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 25,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        constraints: const BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 20),
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Todo List",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "March 4 2010",
                      style: TextStyle(
                        color: Colors.white24,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: tasks.map((task) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          task['completed']
                              ? Icons.check_circle_outline
                              : Icons.circle_outlined,
                          color: task['completed']
                              ? Colors.white24
                              : Colors.white,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          task['title'],
                          style: TextStyle(
                            decoration: task['completed']
                                ? TextDecoration.lineThrough
                                : TextDecoration.none,
                            color: task['completed']
                                ? Colors.white24
                                : Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          task['time'],
                          style: TextStyle(
                            color: task['completed']
                                ? Colors.white24
                                : Colors.white,
                          ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
