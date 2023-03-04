import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int _index = 0;

  List<QuestionList> _questionBank = [
    QuestionList(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: true),
    QuestionList(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: false),
    QuestionList(question: 'A slug\'s blood is green.', answer: true)
  ];

  String getQue() {
    return _questionBank[_index].question;
  }

  bool getAns() {
    return _questionBank[_index].answer;
  }

  int getLen() {
    return _questionBank.length;
  }

  bool nextQue() {
    if (_index < _questionBank.length - 1) {
      _index++;
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _index = 0;
  }
}
