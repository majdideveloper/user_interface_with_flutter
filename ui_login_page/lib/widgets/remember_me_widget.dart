import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class RememberMeWidget extends StatefulWidget {
  const RememberMeWidget({super.key});

  @override
  State<RememberMeWidget> createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const Text(
              "Remember Me",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          ],
        ),
        TextButton(onPressed: () {}, child: Text("Forget Password"))
      ],
    );
  }
}
