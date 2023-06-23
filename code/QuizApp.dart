import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Question> _questions = [
    Question(
      'What is the capital of France?',
      ['London', 'Paris', 'Berlin', 'Rome'],
      'Paris',
    ),
    Question(
      'Who painted the Mona Lisa?',
      ['Michelangelo', 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh'],
      'Leonardo da Vinci',
    ),
    Question(
      'What is the largest planet in our solar system?',
      ['Saturn', 'Jupiter', 'Neptune', 'Mars'],
      'Jupiter',
    ),
    Question(
      'What is the symbol for the chemical element oxygen?',
      ['O', 'H', 'C', 'N'],
      'O',
    ),
    Question(
      'What year was the first iPhone released?',
      ['2005', '2007', '2009', '2011'],
      '2007',
    ),
  ];

  Random _random = Random();
  int _currentIndex = 0;
  int _score = 0;
  bool _showScore = false;
  List<bool> _selections = [];

  @override
  void initState() {
    super.initState();
    _questions.shuffle();
    _selections = List<bool>.filled(_questions[_currentIndex].options.length, false);
  }

  void _checkAnswer() {
    if (_selections.contains(true)) {
      String selectedOption = _questions[_currentIndex].options[_selections.indexOf(true)];
      if (_questions[_currentIndex].isCorrect(selectedOption)) {
        setState(() {
          _score++;
        });
      }
    }

    if (_currentIndex < _questions.length - 1) {
      setState(() {
        _currentIndex++;
        _selections = List<bool>.filled(_questions[_currentIndex].options.length, false);
      });
    } else {
      setState(() {
        _showScore = true;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _questions.shuffle();
      _currentIndex = 0;
      _score = 0;
      _showScore = false;
      _selections = List<bool>.filled(_questions[_currentIndex].options.length, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Center(
          child: _showScore
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Score: $_score/${_questions.length}',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _restartQuiz,
                      child: Text('Redo'),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Question ${_currentIndex + 1}/${_questions.length}',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    Text(
                      _questions[_currentIndex].questionText,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: _questions[_currentIndex]
                          .options
                          .asMap()
                          .entries
                          .map((entry) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: ChoiceChip(
                                  label: Text(entry.value),
                                  selected: _selections[entry.key],
                                  onSelected: (isSelected) {
                                    setState(() {
                                      _selections[entry.key] = isSelected;
                                    });
                                  },
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _checkAnswer,
                      child: Text('Submit'),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class Question {
  final String questionText;
  final List<String> options;
  final String answer;

  Question(this.questionText, this.options, this.answer);

  bool isCorrect(String selectedOption) {
    return selectedOption == answer;
  }
}
