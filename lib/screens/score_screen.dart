import 'package:flutter/material.dart';
import 'package:trivia_academy/components/app_bar_trivia.dart';
import 'package:trivia_academy/components/commom_button.dart';

// ignore: must_be_immutable
class ScoreScreen extends StatelessWidget {
  int result = 0;
  int totalQuestions = 0;

  ScoreScreen({Key key, @required this.result, @required this.totalQuestions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTrivia(),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 160,
                ),
                Text(
                  'VOCÊ ACERTOU',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff263238),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '$result',
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffE83B86)),
                    ),
                    Text(
                      ' / $totalQuestions',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff263238)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 87,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, -1),
              ),
            ]),
            child: Center(
                child: CommomButton(
              caption: 'Jogar Novamente',
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              enabled: true,
            )),
          ),
        ],
      ),
    );
  }
}
