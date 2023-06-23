import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

// This class represents the dice roller widget
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

// This class represents the state of the dice roller widget
class _DiceRollerState extends State<DiceRoller> {
  // Initialize the current dice roll to 2
  var currentDiceRoll = 2;

  // This function is called when the dice is rolled
  void _rollDice() {
    setState(() {
      // Generate a random number between 1 and 6 (inclusive)
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Display the image of the dice based on the current dice roll
          Image.asset('images/dice-$currentDiceRoll.png', width: 160),
          const SizedBox(
            height: 8,
          ),
          // Display a button to roll the dice
          TextButton(
            onPressed: _rollDice,
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                // Set the color of the text
                color: Color.fromARGB(255, 37, 47, 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
