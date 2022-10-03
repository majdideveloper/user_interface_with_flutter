import 'package:flutter/material.dart';

class ThreeButtonWidget extends StatelessWidget {
  const ThreeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: Image.network(
                'https://db.hfsplay.fr/files/2019/09/19/Google-logo-2015-G-icon_msaHv56.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: Image.network(
                'https://pnggrid.com/wp-content/uploads/2021/11/Meta-1024x576.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: Image.network(
                'https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png'),
          ),
        ),
      ],
    );
  }
}
