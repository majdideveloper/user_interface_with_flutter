import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: 'Welcome Back,',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextSpan(
            text: 'Login\n',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'for Continue !',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
