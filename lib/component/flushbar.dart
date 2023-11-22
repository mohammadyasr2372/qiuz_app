// ignore_for_file: unnecessary_new, prefer_const_constructors, avoid_single_cascade_in_expression_statements

import 'package:flutter/material.dart';
// import 'package:intro_to_uitity/main.dart';

import '../main.dart';

mixin UitilityComponent {
  checkoutAnswer(
      bool isCorrect, BuildContext context, num time, num answerTime) {
    if (time < answerTime) {
      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Time Out'),
        backgroundColor: Colors.blue,
      ));
      controller.nextPage(duration: Duration(seconds: 2), curve: Curves.easeIn);
    } else {
      if (isCorrect) {
        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          duration: Duration(seconds: 1),
          content: Text('Success'),
          backgroundColor: Colors.green,
        ));
        controller.nextPage(
            duration: Duration(seconds: 2), curve: Curves.easeIn);
        score++;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
          duration: Duration(seconds: 1),
          content: Text('Failed'),
          backgroundColor: Colors.red,
        ));

        controller.nextPage(
            duration: Duration(seconds: 2), curve: Curves.easeIn);
        nuscore++;
      }
    }
  }
}
