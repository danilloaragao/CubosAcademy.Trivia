import 'package:flutter/material.dart';

class QuestionBox extends StatefulWidget {
  @override
  _QuestionBoxState createState() => _QuestionBoxState();

  const QuestionBox({Key key, this.questionNumber, this.question})
      : super(key: key);

  final int questionNumber;
  final String question;
}

class _QuestionBoxState extends State<QuestionBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(32, 56, 32, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PERGUNTA ' + widget.questionNumber.toString() + ' :',
            style: TextStyle(fontSize: 16, color: Color(0xff4C4C4C)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            widget.question,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
