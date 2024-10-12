import 'package:flutter/material.dart';
import 'package:todo_app_team/usa/meta_ui.dart/get_start.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool light = true;
  bool light1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/myprofile.jpg'),
                        radius: 50,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Coffeestories",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                      ),
                      SizedBox(height: 5),
                      Text("yazu.12sleep@icloud.com",style: TextStyle(color: Colors.grey.shade600),),
                      SizedBox(height: 7),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text("Edit Profile",
                          style: TextStyle(color: Colors.white,letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Inventories",
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                Card(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    ListTile(
                      leading: Icon(Icons.home_filled),
                      title: Row(
                        children: [
                          Text('My Stories'),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 7),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 6, 170, 0),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Text(
                              "2",
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_right_alt_sharp),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.support_rounded),
                      title: Text('Support'),
                      trailing: Icon(Icons.arrow_right_alt_sharp),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Preferences", style: TextStyle(color: Colors.grey.shade700, fontSize: 16)),
                Card(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    ListTile(
                      leading:const Icon(Icons.dark_mode),
                      title:const Text("Dark Mode"),
                      trailing: Switch(
                        value: light,
                        activeColor:  const Color.fromARGB(255, 0, 0, 0),
                        onChanged: (bool value) {
                          setState(() {
                            light = value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.face_outlined),
                      title: Text('Face ID'),
                      trailing: Switch(
                        value: light1,
                        activeColor: const Color.fromARGB(255, 0, 42, 255),
                        onChanged: (bool value) {
                          setState(() {
                            light1 = value;
                          });
                        },
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Icon(Icons.copy_rounded),
                        title: Text('PIN Code'),
                        trailing: Icon(Icons.arrow_right_alt_sharp),
                      ),
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      child: ListTile(
                        iconColor: Colors.red,
                        textColor: Colors.red,
                        leading: Icon(Icons.logout),
                        title: Text('Logout'),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(255, 0, 26, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_reset_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
