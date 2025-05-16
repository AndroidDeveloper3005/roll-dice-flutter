import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {


  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = "assets/images/dice-1.png";
  var currentDiceRoll = 1;

  void rollDice() {

    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1 ; /// 1 ---- 6
      //activeDiceImage = "assets/images/dice-$currentDiceRoll.png";

    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(height: 15,),
        TextButton(
          style: TextButton.styleFrom(
            //padding: const EdgeInsets.only(top: 20,),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 24),
          ),
          onPressed: rollDice,
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}


