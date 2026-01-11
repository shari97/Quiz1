import 'package:flutter/material.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatelessWidget {
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

  // ✅ State belongs here
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        // Question text
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "This is where the question text will appear",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),

        // TRUE button
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                textStyle: TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.check, color: Colors.green),
                  );
                });
              },
              child: Text("True"),
            ),
          ),
        ),

        // FALSE button
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                textStyle: TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                setState(() {
                  scoreKeeper.add(
                    Icon(Icons.close, color: Colors.red),
                  );
                });
              },
              child: Text("False"),
            ),
          ),
        ),

        // Score icons row
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
