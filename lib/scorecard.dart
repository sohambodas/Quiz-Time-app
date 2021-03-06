import 'package:flutter/material.dart';

class Score extends StatelessWidget {

  int num;

  @override
  Widget build(BuildContext context) {
    num = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.,
          children: <Widget>[
            Expanded(
              child: Container(

                color: Colors.teal,
                child: Icon(Icons.check,color: Colors.grey[100]),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:65.0),
                    child: Text(
                      'Your score is',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 25.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '$num',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 300.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/start');
                    },
                    child: Text(
                      'End',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 42.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.redAccent,
                child: Icon(Icons.cancel,color: Colors.grey[100]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
