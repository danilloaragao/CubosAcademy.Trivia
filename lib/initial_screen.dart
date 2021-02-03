import 'package:flutter/material.dart';
import 'package:trivia_academy/trivia_screen.dart';

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
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TriviaScreen()),
              );
            },
            color: Color.fromRGBO(218, 1, 117, 1),
            textColor: Color.fromRGBO(247, 247, 247, 1),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.fromLTRB(60, 11, 60, 11),
            child: Text(
              'Começar',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
