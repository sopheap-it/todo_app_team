import 'package:flutter/material.dart';
import 'package:todo_app_team/usa/todo_Task_UI/screen_add_task.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.format_list_bulleted_rounded),
              onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          // First column
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Declutter desk and organize drawers',
                            style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 20),
                          Text("2 Oct 2024 11:43 AM"),
                        ],
                      ),
                    ),
                    // Icon column
                    Icon(Icons.check_outlined)
                  ],
                ),
              ),
            ),
          ),
          // Second column
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Research and try a new recipe for dinner at night',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    SizedBox(height: 20),
                    Text("10 Oct 2024 8:23 AM"),
                  ],
                ),
              ),
            ),
          ),
          // Third column
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Water and care for your indoor plants test',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 20),
                  Text("15 Oct 2024 3:34 PM"),
                ],
              ),
            ),
          ),
          // Fourth column
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Write down the personal goals for the upcoming month',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    SizedBox(height: 20),
                    Text("20 Oct 2024 9:23 PM"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScreenAddTask()));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
