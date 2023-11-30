import 'package:flutter/material.dart';
import 'package:quiz_app/start_section.dart';

class DecoratedBg extends StatelessWidget {
  const DecoratedBg({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 176, 87, 194),
            Color.fromARGB(255, 56, 2, 81)
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: const StartSection(),
    );
  }
}
