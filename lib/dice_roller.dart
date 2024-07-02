import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  final randomizer = Random();
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice(){
    int randomNumber = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          TextButton(onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              )
          ),
           child: const Text('Roll dice'))
          
        ],
      );
}
}