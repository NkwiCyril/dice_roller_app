import 'package:flutter/material.dart';
import 'dart:math';


final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); // executing the constructor function of dice roller state
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceNum = 3;

  void _rollDice() {
    setState(() {
      activeDiceNum = randomizer.nextInt(6) + 1;
    });
    // print('Changing image...'); // in-built dart function for debugging (printing object string in the console)
  }

  var color1 = Colors.white;
  var color2 = Colors.black;

  void _changeColor() {
    setState(() {
      if (color1 == Colors.white && color2 == Colors.black) {
        color1 = Colors.black;
        color2 = Colors.white;
      } else {
        color1 = Colors.white;
        color2 = Colors.black;
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceNum.png', // display the new dice image upon click
            width: 200),
        const SizedBox(height: 15),
        TextButton(
          // roll dice in this case is a pointer to the function defined above
          onPressed: _rollDice, // execute this function on click
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              backgroundColor: color1,
              foregroundColor: color2,
              // textStyle is constant since since the styling won't change
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text(
            'Roll Dice',
          ),
        ),
        const SizedBox(height: 20),
        const Text('Change color of Roll Dice button',
            style: TextStyle( color: Colors.white, fontSize: 17),
            ),
        const Padding(padding: EdgeInsets.only(top: 8.0, bottom: 4.0)),
        FloatingActionButton(
          onPressed: _changeColor,
          tooltip: "Change 'Roll Dice' button",
          child: const Icon(
            Icons.change_circle_outlined,
            size: 40,
          ),
        ),
      ],
    );
  }
}
