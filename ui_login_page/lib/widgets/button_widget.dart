import 'package:flutter/material.dart';
import 'package:ui_login_page/config/themes/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shadowColor: Colors.green,
          backgroundColor: AppTheme.blueColor,
          shape: StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20)),
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: const Center(child: Text('Sign in'))),
    );
  }
}
