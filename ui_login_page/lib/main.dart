import 'package:flutter/material.dart';
import 'package:ui_login_page/config/themes/theme.dart';
import 'package:ui_login_page/screens/login_screen.dart';
import 'package:ui_login_page/screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SignUpScreeen(),
    );
  }
}
