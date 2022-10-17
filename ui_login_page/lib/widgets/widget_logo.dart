import 'package:flutter/material.dart';

class WidgetLogo extends StatelessWidget {
  const WidgetLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/logo.png",
        height: 220,
        width: 200,
      ),
    );
  }
}
