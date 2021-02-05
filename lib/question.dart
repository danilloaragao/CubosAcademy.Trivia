class Question {
  String questionText;
  List<String> options = new List<String>();
  int answer;

  Question(this.questionText, this.options, this.answer);

  static List<Question> getQuestionList() {
    List<Question> questions = [];

    questions.add(Question(
      'O que é Flutter?',
      [
        'Um novo smartphone.',
        'Um sistema operacional',
        'Um SDK de desenvolvimento multiplataforma',
        'Um serviço do Google',
      ],
      3,
    ));

    questions.add(Question(
      'Qual linguagem de programação é usada pelo Flutter?',
      [
        'Dart',
        'Java',
        'Javascript',
        'Go',
      ],
      1,
    ));

    return questions;
  }
}
