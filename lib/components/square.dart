import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final String imagePath;

  const Square({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 238, 238),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16)),
      child: Image.asset(
        imagePath,
        width: 70,
      ),
    );
  }
}
