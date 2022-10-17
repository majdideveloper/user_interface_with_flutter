import 'package:flutter/material.dart';
import 'package:ui_login_page/config/themes/theme.dart';
import 'package:ui_login_page/widgets/bottom_text.dart';
import 'package:ui_login_page/widgets/button_widget.dart';
import 'package:ui_login_page/widgets/helper_widget.dart';
import 'package:ui_login_page/widgets/remember_me_widget.dart';
import 'package:ui_login_page/widgets/text_field_widget.dart';
import 'package:ui_login_page/widgets/three_button_widget.dart';
import 'package:ui_login_page/widgets/widget_logo.dart';

class SignUpScreeen extends StatelessWidget {
  const SignUpScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 80,
          horizontal: 20,
        ),
        color: AppTheme.blueColor,
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 10,
            ),
            height: 600,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(100.0),
              ),
            ),
            child: Column(
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
          ),
          largeVerticalSpacer,
          const ThreeButtonWidget(),
          largeVerticalSpacer,
          const Bottomtext(),
        ]),
      ),
    );
  }
}
