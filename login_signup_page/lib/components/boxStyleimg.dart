import 'package:flutter/material.dart';

class BoxStyleImg extends StatelessWidget {
  const BoxStyleImg({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(9),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          img,
          height: 75,
        ),
      ),
    );
  }
}
