import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

// we can also change this any time if we declare as const or final we can not change
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // default constructor
  //const GradientContainer({super.key});

  // custom constructor
   GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }

  /*
  // custom constructor
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Text(
          "Hello Developer",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  } */
}
