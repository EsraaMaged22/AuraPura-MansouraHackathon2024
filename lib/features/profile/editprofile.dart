import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile_picture.png"), // Replace with user's photo
            ),
            SizedBox(height: 8),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                // Logic for updating profile picture
              },
            ),
            SizedBox(height: 16),

            // Form Fields
            TextField(
              decoration: InputDecoration(labelText: "First name"),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: "Last name"),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: "Job"),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: "About your plants and animals"),
            ),
            SizedBox(height: 32),

            // Save Button
            ElevatedButton(
              onPressed: () {
                // Save changes
              },
              child: Text("Save"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ProfileMenuItem({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}