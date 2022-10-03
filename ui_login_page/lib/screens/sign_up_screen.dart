import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_login_page/config/themes/theme.dart';
import 'package:ui_login_page/widgets/bottom_text.dart';
import 'package:ui_login_page/widgets/helper_widget.dart';
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
                Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: [
                const WidgetLogo(),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: TextField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.password),
                      prefixIcon: const Icon(Icons.mail),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50.0)),
                      disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50.0)),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
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
