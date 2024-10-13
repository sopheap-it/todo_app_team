import 'package:flutter/material.dart';
import 'package:todo_app_team/sothearith/newtask.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        automaticallyImplyLeading: false, // Hide Back arrow
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Row(
          children: [
            Text(
              'Tasks',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 168),
            Icon(
              Icons.arrow_downward,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromARGB(153, 110, 110, 110),
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'go to bathroom',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 55),
                            Icon(
                              Icons.done,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text(
                          '10 October, 2024',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromARGB(153, 110, 110, 110),
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Papa Diddy',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 99),
                            Icon(
                              Icons.done,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text(
                          '90 October, 2024',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromARGB(153, 110, 110, 110),
                      width: 2,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Justin Berry',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 90),
                            Icon(
                              Icons.done,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text(
                          '100 October, 2024',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Newtask()),
                );
              },
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
