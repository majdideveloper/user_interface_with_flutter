import 'package:flutter/material.dart';
import 'package:ui_login_page/widgets/helper_widget.dart';
import 'package:ui_login_page/widgets/welcome_text.dart';
import 'package:ui_login_page/widgets/widget_logo.dart';

import '../widgets/button_widget.dart';
import '../widgets/remember_me_widget.dart';
import '../widgets/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            largeVerticalSpacer,
            largeVerticalSpacer,
            const WelcomeText(),
            largeHorizontalSpacer,
            largeXVerticalSpacer,
            Column(
              children: [
                const WidgetLogo(),
                const TextFieldWidget(),
                const TextFieldWidget(),
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const RememberMeWidget()),
                  ],
                ),
                smallVerticalSpacer,
                const ButtonWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
