import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answer_notification.dart';

class AnswerBox extends StatefulWidget {
  @override
  _AnswerBoxState createState() => _AnswerBoxState();

  const AnswerBox({
    Key key,
    this.value,
    this.selectedAnswerNumber,
    this.answer,
    this.correctAnswer,
    this.answered,
  }) : super(key: key);

  final int value;
  final int selectedAnswerNumber;
  final String answer;
  final int correctAnswer;
  final bool answered;
}

class _AnswerBoxState extends State<AnswerBox> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = Color(0xffFFFFFF);
    Color radioColor = Color(0xffE83B86);
    Color borderColor = Color(0xffFFFFFF);

    if (widget.answered) {
      if (widget.correctAnswer == widget.value) {
        bgColor = Color(0xff4EC06E).withOpacity(0.20);
        radioColor = Color(0xff4EC06E);
        borderColor = Color(0xff4EC06E);
      } else if (widget.selectedAnswerNumber == widget.value) {
        bgColor = Color(0xffFF4D4D).withOpacity(0.20);
        radioColor = Color(0xffFF4D4D);
        borderColor = Color(0xffFF4D4D);
      }
    }

    return Container(
      margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 3),
          ),
        ],
        border: Border.all(
          color: borderColor,
          style: BorderStyle.solid,
          width: 1.3,
        ),
        color: bgColor,
      ),
      child: RadioListTile(
        value: widget.value,
        activeColor: radioColor,
        groupValue: widget.selectedAnswerNumber,
        title: Text(widget.answer),
        onChanged: (int value) {
          AnswerNotification(selectedAnswer: widget.value)..dispatch(context);
        },
      ),
    );
  }
}
