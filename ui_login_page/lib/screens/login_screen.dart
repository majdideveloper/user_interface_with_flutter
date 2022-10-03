import 'package:flutter/material.dart';
import 'package:ui_login_page/widgets/helper_widget.dart';
import 'package:ui_login_page/widgets/welcome_text.dart';
import 'package:ui_login_page/widgets/widget_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            largeVerticalSpacer,
            largeVerticalSpacer,
            WelcomeText(),
            WidgetLogo(),
          ],
        ),
      ),
    );
  }
}
