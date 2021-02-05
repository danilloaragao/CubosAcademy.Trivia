import 'package:flutter/material.dart';
import 'package:trivia_academy/components/answer_box.dart';
import 'package:trivia_academy/components/answer_notification.dart';
import 'package:trivia_academy/components/app_bar_trivia.dart';
import 'package:trivia_academy/components/commom_button.dart';
import 'package:trivia_academy/components/question_box.dart';
import 'package:trivia_academy/question.dart';
import 'package:trivia_academy/screens/score_screen.dart';

class TriviaScreen extends StatefulWidget {
  @override
  _TriviaScreenState createState() => _TriviaScreenState();
}

class _TriviaScreenState extends State<TriviaScreen> {
  int answer = 0;
  int score = 0;
  int index = 0;
  bool answered = false;
  List<Question> questionsList = Question.getQuestionList();

  void verifyResponse() {
    if (answer == questionsList[index].answer) {
      score++;
    }
  }

  void setAnswerState(int value) {
    setState(() {
      answer = value;
    });
  }

  void buttonHandle() {
    if (!answered) {
      verifyResponse();
      setState(() {
        answered = true;
      });
    } else {
      setState(() {
        if (index + 1 < questionsList.length) {
          index++;
          answer = 0;
          answered = false;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScoreScreen(
                result: score,
                totalQuestions: questionsList.length,
              ),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTrivia(),
      body: Column(
        children: [
          QuestionBox(
            question: questionsList[index].questionText,
            questionNumber: index + 1,
          ),
          Expanded(
            child: new ListView.builder(
              itemCount: questionsList[index].options.length,
              itemBuilder: (BuildContext context, int optionIndex) {
                return NotificationListener<AnswerNotification>(
                  child: AnswerBox(
                    selectedAnswerNumber: answer,
                    answer: questionsList[index].options[optionIndex],
                    value: optionIndex + 1,
                    answered: answered,
                    correctAnswer: questionsList[index].answer,
                  ),
                  // ignore: missing_return
                  onNotification: (notification) {
                    setAnswerState(notification.selectedAnswer);
                  },
                );
              },
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
                caption: answered ? 'Finalizar' : 'Responder',
                onPressed: this.buttonHandle,
                enabled: answer != 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
