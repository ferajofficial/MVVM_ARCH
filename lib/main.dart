import 'package:flutter/material.dart';
import 'package:mvvm_arch/view/Login/login_page.dart';
import 'package:mvvm_arch/view/Profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),

      // home: const HomePage(),
      // home: const LoginPage(),
      // home: const SplashPage(),
      home: const ProfilePage(),
      // home: const SignupPage(),
    );
  }
}
