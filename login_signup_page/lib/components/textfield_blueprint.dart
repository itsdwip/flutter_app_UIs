import 'package:flutter/material.dart';

class TextFieldBlueprint extends StatelessWidget {
  const TextFieldBlueprint({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.keyboardType,
  });

  final controller;
  final String hintText;
  final bool obscureText;
  final dynamic keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey.shade300,
            ),
          ),
          fillColor: Colors.blueGrey[10],
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
