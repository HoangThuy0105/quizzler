import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'Nước đá tan nhanh hơn trong nước ấm so với nước lạnh?', a: true),
    Question(q: ' Mùa đông ở Bắc Cực kéo dài hàng năm?', a: false),
    Question(q: 'Kim loại vàng mềm hơn kim loại nhôm?', a: false),
    Question(q: 'Sét không bao giờ đánh cùng một nơi hai lần.', a: false),
    Question(q: 'Nếu bạn khóc trên tàu vũ trụ, nước mắt sẽ dính luôn trên mặt bạn.', a: true),
    Question(q: 'Nếu bạn cắt đôi một con giun, cả hai nửa của nó sẽ lại phát triển thành cơ thể hoàn chỉnh.', a: false),
    Question(q: 'Con người có thể phân biệt được hơn một triệu triệu mùi khác nhau', a: true),
    Question(q: 'Adults have fewer bones than babies do.', a: true),
    Question(q: 'Goldfish only have a memory of three seconds.', a: false),
    Question(q: 'There are more cells of bacteria in your body than there are human cells?', a: true),


  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
