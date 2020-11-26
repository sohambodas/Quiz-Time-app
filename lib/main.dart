import 'package:flutter/material.dart';
import 'package:quiztime/questioncard.dart';
import 'package:quiztime/question.dart';
import 'package:quiztime/home.dart';
import 'package:quiztime/scorecard.dart';
import 'package:quiztime/start.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/start',
  routes: {
    '/start': (context) => Start(),
    '/home': (context) => Board(),
    '/score': (context) => Score(),

  },

));

