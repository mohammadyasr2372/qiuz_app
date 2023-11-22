// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guiz_app/model/question.dart';
import 'package:guiz_app/component/flushbar.dart';

// import 'package:guiz_app/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

List<QuestionModel> question = [
  QuestionModel(question: 'How long are you ?', time: 20, answers: [
    AnswerModel(answer: '20', isCorrect: false),
    AnswerModel(answer: '10', isCorrect: false),
    AnswerModel(answer: '3', isCorrect: false),
    AnswerModel(answer: '1.89', isCorrect: true),
  ]),
  QuestionModel(question: 'How long are you ?', time: 20, answers: [
    AnswerModel(answer: '20', isCorrect: false),
    AnswerModel(answer: '10', isCorrect: false),
    AnswerModel(answer: '3', isCorrect: false),
    AnswerModel(answer: '1.89', isCorrect: true),
  ]),
  QuestionModel(question: 'How long are you ?', time: 20, answers: [
    AnswerModel(answer: '20', isCorrect: false),
    AnswerModel(answer: '10', isCorrect: false),
    AnswerModel(answer: '3', isCorrect: false),
    AnswerModel(answer: '1.89', isCorrect: true),
  ]),
  QuestionModel(question: 'How long are you ?', time: 20, answers: [
    AnswerModel(answer: '20', isCorrect: false),
    AnswerModel(answer: '10', isCorrect: false),
    AnswerModel(answer: '3', isCorrect: false),
    AnswerModel(answer: '1.89', isCorrect: true),
  ]),
];

PageController controller = PageController();
num answerTime = 0;
int nuscore = 0;
int score = 0;

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> with UitilityComponent {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        answerTime++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        itemCount: question.length,
        itemBuilder: (context, index) => Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(164, 47, 193, 1),
            leading: Icon(Icons.arrow_back),
            actions: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(Icons.menu),
              )
            ],
            centerTitle: true,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Container(
                      height: 250,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color.fromRGBO(164, 47, 193, 1),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 190, top: 110),
                    child: Container(
                      width: 67,
                      height: 67,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 25, left: 25, top: 150),
                    child: Container(
                      width: double.infinity - 50,
                      height: 170,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0xFFFBEBFF),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 205,
                    top: 120,
                    child: CircularProgressIndicator(
                      value: (answerTime.toDouble() / 20),
                    ),
                  ),
                  Positioned(
                    left: 210,
                    top: 123,
                    child: Text(
                      (answerTime < 10)
                          ? '0' + answerTime.toString()
                          : answerTime.toString(),
                      style: TextStyle(
                        color: Color(0xFFD05904),
                        fontSize: 20,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 175, top: 200),
                    child: Text(
                      'Question' + (index + 1).toString() + '/20',
                      style: TextStyle(
                        color: Color(0xFFA32EC1),
                        fontSize: 14,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 155, left: 370),
                    child: Text(
                      (nuscore < 10)
                          ? '0' + nuscore.toString()
                          : nuscore.toString(),
                      style: TextStyle(
                        color: Color(0xFFD05904),
                        fontSize: 20,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 325),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.amber),
                      width: 30,
                      height: 5,
                      child: LinearProgressIndicator(
                        value: (nuscore / 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 155, left: 45),
                    child: Text(
                      (score < 10) ? '0' + score.toString() : score.toString(),
                      style: TextStyle(
                        color: Color(0xFF1E8334),
                        fontSize: 20,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170, left: 80),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.amber),
                      width: 30,
                      height: 5,
                      child: LinearProgressIndicator(
                        value: (score / 20),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(left: 50, top: 250),
                      child: Text(
                        question[index].question,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2B252C),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 350),
                    child: SizedBox(
                      height: 500,
                      child: ListView.builder(
                        itemCount: question[index].answers.length,
                        itemBuilder: (context, ind) => InkWell(
                          onTap: () {
                            checkoutAnswer(
                                question[index].answers[ind].isCorrect,
                                context,
                                question[index].time,
                                answerTime);
                            answerTime = 0;
                            // showMyFlushBar(context);
                            checkoutAnswer(
                                question[index].answers[ind].isCorrect,
                                context,
                                question[index].time,
                                answerTime);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 240,
                              height: 48,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Color(0xFFA32EC1),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: ListTile(
                                // leading: CircleAvatar(
                                //   child: Text((ind + 1).toString()),
                                // ),
                                title:
                                    Text(question[index].answers[ind].answer),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
