import 'package:dice_roll_1/dice_roller.dart';
import 'package:flutter/material.dart';

// This is the entry point of the application
void main() {
  runApp(
    MaterialApp(
      // Set the title of the app
      title: 'Dice Roll',
      // Set the home screen of the app
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // Set the title of the app bar
          title: const Text(
            'Dice Roll App',
            style: TextStyle(
              // Set the color of the text
              color: Color.fromARGB(255, 37, 47, 12),
              // Set the font size of the text
              fontSize: 22,
            ),
          ),
          // Set the background color of the app bar
          backgroundColor: const Color.fromARGB(190, 218, 190, 30),
        ),
        body: Container(
          decoration: const BoxDecoration(
            // Set a gradient background for the container
            gradient: LinearGradient(
              // Define the colors for the gradient
              colors: [
                Color.fromARGB(255, 246, 181, 84),
                Color.fromARGB(255, 166, 122, 56),
                Color.fromARGB(255, 79, 60, 32),
              ],
              // Set the starting and ending positions of the gradient
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:
              const DiceRoller(), // Display the DiceRoller widget inside the container
        ),
      ),
    ),
  );
}
