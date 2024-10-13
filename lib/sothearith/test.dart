import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Start content
          children: [
            const Text(
              'Inventories',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10,
              ),
            ),
            // Container with background color for both cards
            Container(
              color: const Color.fromARGB(220, 240, 240, 240), // Same background color for both cards
              child: const Column(
                children: [
                  // First Card
                  Card(
                    margin: EdgeInsets.all(10),
                    color: Color.fromARGB(220, 158, 158, 158),
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and arrow
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.store,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'My Stores',
                                style: TextStyle(
                                  fontSize: 16, // Increase font size for better visibility
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios, // Right Arrow after text
                            color: Colors.black54,
                            size: 16, // Smaller arrow size
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Divider Line
                  Divider(
                    color: Colors.black26, // Color of the divider
                    thickness: 1,          // Thickness of the line
                    height: 20,            // Space around the divider
                  ),
                  // Second Card
                  Card(
                    margin: EdgeInsets.all(10),
                    color: Color.fromARGB(220, 212, 207, 207),
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between text and arrow
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.store,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'My Stores',
                                style: TextStyle(
                                  fontSize: 16, // Increase font size for better visibility
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios, // Right Arrow after text
                            color: Colors.black54,
                            size: 16, // Smaller arrow size
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
