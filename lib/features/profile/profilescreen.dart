import 'package:flutter/material.dart';

import 'editprofile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Profile Header
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/profile_picture.png"), // Replace with user's photo
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ali Alaa",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Doctor",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfileScreen()),
                    );
                  },
                ),
              ],
            ),
          ),

          Divider(),

          // Menu Items
          Expanded(
            child: ListView(
              children: [
                ProfileMenuItem(label: "Personal Info", onTap: () {}),
                ProfileMenuItem(label: "Reviews", onTap: () {}),
                ProfileMenuItem(label: "My Progress", onTap: () {}),
                ProfileMenuItem(label: "My Routine", onTap: () {}),
                ProfileMenuItem(label: "Wishlist", onTap: () {}),
                ProfileMenuItem(label: "Help & Support", onTap: () {}),
                Divider(),
                ListTile(
                  title: Text("Privacy"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Information"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Log out",
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


