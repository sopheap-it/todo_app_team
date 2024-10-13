import 'package:flutter/material.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center content
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/avartar.png",
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Choeun Sothearith',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'rithcreativecd@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(153, 0, 0, 0),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Inventories',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),
                // Container for card
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(143, 158, 158, 158),
                      width: 1.5,
                    ),
                    color: const Color.fromARGB(223, 255, 255, 255),
                  ),
                  child: Column(
                    children: [
                      // First Card
                      Card(
                        margin: const EdgeInsets.all(10),
                        color: const Color.fromARGB(246, 255, 255, 255),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.store,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'My Stores',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Divider
                      const Divider(
                        color: Colors.black26,
                        thickness: 1,
                        height: 5,
                      ),
                      // Second Card
                      Card(
                        margin: const EdgeInsets.all(10),
                        color: const Color.fromARGB(246, 255, 255, 255),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Card corner radius
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.support,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Support',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Preferences',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(143, 158, 158, 158),
                      width: 1.5,
                    ),
                    color: const Color.fromARGB(223, 255, 255, 255),
                  ),
                  child: Column(
                    children: [
                      // First Card for Switch
                      Card(
                        margin: const EdgeInsets.all(10),
                        color: const Color.fromARGB(246, 255, 255, 255),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Push notifications',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value; // Update state
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.black45,
                                inactiveTrackColor:
                                    const Color.fromARGB(92, 158, 158, 158),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Divider
                      const Divider(
                        color: Colors.black26,
                        thickness: 1,
                        height: 5,
                      ),
                      // Second Card
                      Card(
                        margin: const EdgeInsets.all(10),
                        color: const Color.fromARGB(246, 255, 255, 255),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Card corner radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.face,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Face ID',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value; // Update state
                                  });
                                },
                                activeColor: Colors.green,
                                inactiveThumbColor: Colors.black45,
                                inactiveTrackColor:
                                    const Color.fromARGB(92, 158, 158, 158),
                              ),
                            ],
                          ),
                        ),
                      ), // Divider
                      const Divider(
                        color: Colors.black26,
                        thickness: 1,
                        height: 5,
                      ),
                      // Third Card
                      Card(
                        margin: const EdgeInsets.all(10),
                        color: const Color.fromARGB(246, 255, 255, 255),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Card corner radius
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.password_outlined,
                                    color: Colors.black45,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'PIN Code',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black26,
                        thickness: 1,
                        height: 5,
                      ),
                      // Fourth Card
                      Card(
                        margin: const EdgeInsets.all(10),
                        color: const Color.fromARGB(246, 255, 255, 255),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Card corner radius
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.logout_outlined,
                                    color: Colors.redAccent,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Logout',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ],
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
        ],
      ),
    );
  }
}
