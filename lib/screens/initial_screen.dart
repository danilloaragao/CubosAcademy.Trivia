import 'package:flutter/material.dart';
import 'package:trivia_academy/components/commom_button.dart';
import 'package:trivia_academy/screens/trivia_screen.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 167,
          ),
          Image(
            image: AssetImage('lib/assets/logo.png'),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Trivia\nacademy',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 88,
          ),
          CommomButton(
            caption: 'Começar',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TriviaScreen()),
              );
            },
            enabled: true,
          )
        ],
      ),
    );
  }
}
