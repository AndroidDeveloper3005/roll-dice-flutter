import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Roll Dice",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 45, 7, 98),
      ),
      body: GradientContainer(
        Color.fromARGB(255, 26, 2, 80),
        Color.fromARGB(255, 45, 7, 98),
      ),
    );
  }
}
