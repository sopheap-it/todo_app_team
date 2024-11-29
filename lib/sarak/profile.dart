import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _buildProfileHeader(),
            SizedBox(height: 10),
            _buildInventoriesSection(),
            SizedBox(height: 15),
            _buildPreferencesSection(),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
  Widget _buildProfileHeader() {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/images/img.png'),
        ),
        SizedBox(height: 2),
        Text('Tep Sarak',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
        Text('tep.sarakk@gmail.com', style: TextStyle(color: Colors.grey)),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _buildInventoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Inventories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Container(
          decoration: BoxDecoration(
            color: Colors.black12, // Background color
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
          padding: const EdgeInsets.all(12), // Padding inside the container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 2),
              ListTile(
                leading: Icon(Icons.store),
                title: Text('My Stores'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.support),
                title: Text('Support'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPreferencesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Preferences', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Container(
          decoration: BoxDecoration(
            color: Colors.black12, // Background color
            borderRadius: BorderRadius.circular(32),
          ),
          padding: const EdgeInsets.all(5), // Padding inside the container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              SwitchListTile(
                secondary: Icon(Icons.notifications),
                title: Text('Push Notifications'),
                value: true,
                onChanged: (bool value) {
                  // Handle push notification toggle
                },
              ),
              Divider(),
              SwitchListTile(
                secondary: Icon(Icons.face),
                title: Text('Face ID'),
                value: true,
                onChanged: (bool value) {
                    // Handle push notification toggle
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('PIN Code'),
                trailing: Icon(Icons.arrow_forward),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Handle logout
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_rounded),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
