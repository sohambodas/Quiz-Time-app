import 'package:flutter/material.dart';
import 'package:quiztime/question.dart';

class QuestionCard extends StatelessWidget {

  final Question instance;
  final Function delete;
  QuestionCard({this.instance,this.delete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.deepPurple[100],
        margin: EdgeInsets.fromLTRB(15.0,7.5,15.0,7.5),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  instance.question,
                  style: TextStyle(
                    color: Colors.deepPurple[900],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: FlatButton.icon(
                      padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 8.0),
                      onPressed: () {
                        delete(true);
                      },
                      icon: Icon(Icons.check,color: Colors.grey[100]),
                      label: Text(''),
                      color: Colors.teal,
                    ),
                  ),
                  Expanded(
                    child: FlatButton.icon(
                      padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 8.0),
                      onPressed: () {
                        delete(false);
                      },
                      icon: Icon(Icons.cancel,color: Colors.grey[100]),
                      label: Text(''),
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
