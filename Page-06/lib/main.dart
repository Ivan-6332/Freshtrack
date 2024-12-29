import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Fix: Use 'super.key'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Settings App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ProfileScreen(), // Fix: Ensure ProfileScreen exists
      debugShowCheckedModeBanner: false,
    );
  }
}


