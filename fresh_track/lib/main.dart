// import 'package:dily_price_report/Settingprofilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_track/profilepage.dart';
// import 'price_report_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Set preferred orientations to portrait only
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Price Report App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          background: const Color(0xFFE8F5E9),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFE8F5E9),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      // home: const PriceReportPage(),
      home: const ProfilePage(),
    );
  }
}