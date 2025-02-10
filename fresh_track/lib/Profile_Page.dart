import 'package:flutter/material.dart';

class SettingsProfilePage extends StatelessWidget {
  const SettingsProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F5E9), // Light green background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Profile Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(height: 8),
                const Text(
                  'HARRY ALWIS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Harry@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      child: const Text('Edit Profile'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                      ),
                      child: const Text('Log Out'),
                    ),
                  ],
                ),
              ],
            ),
          ),
            // Settings Menu
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                SettingsMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'System setting',
                ),
                SettingsMenuItem(
                  icon: Icons.privacy_tip_outlined,
                  title: 'Privacy',
                ),
                SettingsMenuItem(
                  icon: Icons.notifications_outlined,
                  title: 'Notification',
                ),
                SettingsMenuItem(
                  icon: Icons.help_outline,
                  title: 'Help & Support',
                ),
                SettingsMenuItem(
                  icon: Icons.description_outlined,
                  title: 'Terms and Conditions',
                ),
              ],
            ),
          ),
          