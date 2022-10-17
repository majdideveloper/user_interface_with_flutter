import 'package:flutter/material.dart';
class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return          Padding(
                  padding: const EdgeInsets.all(12),
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
                );
  }
}
