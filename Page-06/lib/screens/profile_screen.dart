import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';
import '../widgets/settings_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Profile header
          const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black12,
              child: Icon(Icons.person, size: 30),
            ),
            title: Text(
              'HARRY ALWIS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text('Harry@gmail.com'),
          ),
          const SizedBox(height: 10),

          // Settings tiles
          const SettingsTile(icon: Icons.settings, title: 'System Setting'),
          const SettingsTile(icon: Icons.lock, title: 'Privacy'),
          const SettingsTile(icon: Icons.notifications, title: 'Notification'),
          const SettingsTile(icon: Icons.help, title: 'Help & Support'),
          const SettingsTile(icon: Icons.description, title: 'Terms and Conditions'),

          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(), // Fix: Ensure BottomNavBar is imported
    );
  }
}

