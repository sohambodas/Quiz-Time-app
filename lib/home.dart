import 'package:flutter/material.dart';
import 'package:quiztime/questioncard.dart';
import 'package:quiztime/question.dart';



class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {

  int count = 0;
  List<Question> questions = [
    Question (question:'Tomatoes are vegetables.', ans:false),
    Question (question:'There are McDonald\'s on every continent except one.', ans:true),
    Question (question:'Italy is in northern Europe.', ans:false),
    Question (question:'Sonic the Hedgehog has an actual name.', ans:true),
    Question (question:'In Japan they grow triangular watermelons.', ans:false),
    Question (question:'The image of dinosaurs in "Jurassic Park" is accurate.', ans:false),
    Question (question:'Both Nicolas Cage and Michael Jackson were married to the same woman.', ans:true),
    Question (question:'Most of the world\'s countries have used atomic weapons in war.', ans:false),
    Question (question:'Walmart sells more bananas than anything else.', ans:true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(
          'Quiz Time',
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.grey[100],
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context,index) {
                  return QuestionCard(instance:questions[index],delete:(bool select) {
                    setState(() {
                      if(select == questions[index].ans){
                        count += 1;
                      }
                      questions.remove(questions[index]);
                    });
                  });
                }
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/score',arguments: count);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Quit and get scores',
                style: TextStyle(
                  color: Colors.deepPurple[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            color: Colors.grey[100],
            //highlightColor: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}


