import 'package:flutter/material.dart';

class StoriesCircle extends StatelessWidget {
  final VoidCallback? onTap;

  const StoriesCircle({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
