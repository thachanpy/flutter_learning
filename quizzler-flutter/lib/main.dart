import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Widget> scoreKeeper = [];
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizBrain.reset();

        scoreKeeper = [];
      }

      else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestions();
      }
    });
  }

  int questionNumber = 0;

  Expanded answerButton(bool answer) {
    String text;
    Color color;
    if (answer) {
      text = "True";
      color = Colors.green;
    } else {
      text = "False";
      color = Colors.red;
    }
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: color,
          ),
          onPressed: () {
            checkAnswer(answer);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            child: Container(
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  setState(() {
                    quizBrain.reset();
                    scoreKeeper = [];
                  });
                },
              ),
            )
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        answerButton(true),
        answerButton(false),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
