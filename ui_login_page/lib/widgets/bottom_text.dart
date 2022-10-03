import 'package:flutter/material.dart';

class Bottomtext extends StatelessWidget {
  const Bottomtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: 'Don\'t have an account? ',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          TextSpan(
            text: 'Sign Up here',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
