import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              child: FlatButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: Text(
                  'START',
                  style: TextStyle(
                    color: Colors.grey[100],
                    fontSize: 42.0,
                    letterSpacing: 2.0,
                  ),
                ),
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
