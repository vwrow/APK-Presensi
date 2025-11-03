import 'package:flutter/material.dart';
import 'package:lat_ukl_1/views/login.dart';
import 'package:lat_ukl_1/views/signup.dart';
import 'package:lat_ukl_1/views/home.dart';
import 'package:lat_ukl_1/views/profile.dart';
import 'package:lat_ukl_1/views/history.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => const loginPage(),
        "/signup": (context) => const signupPage(),
        "/home": (context) => const homePage(),
        "/profile": (context) => const profilePage(),
        "/history": (context) => const historyPage(),
      },
    );
  }
}
