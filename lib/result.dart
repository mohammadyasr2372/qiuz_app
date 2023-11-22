// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(164, 47, 193, 1),
          leading: Icon(Icons.arrow_back),
          actions: [Image.asset('assets/top.png')],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                color: Color.fromRGBO(164, 47, 193, 1),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Today',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Month',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Text(
                            'All Times',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Image.asset('assets/2.png'),
                            ),
                            Image.asset('assets/1.png'),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Image.asset('assets/3.png'),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Transform(
                              transform: Matrix4.skew(0.2, 0),
                              child: Container(
                                color: Color.fromRGBO(221, 144, 240, 0.7),
                                width: 80,
                                height: 120,
                                child: Column(
                                  children: [
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 70, color: Colors.white),
                                    ),
                                    Text(
                                      '442pt',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ClipPath(
                              child: Container(
                                color: Color.fromRGBO(221, 144, 240, 0.7),
                                width: 80,
                                height: 150,
                                child: Column(
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 80, color: Colors.white),
                                    ),
                                    Text(
                                      '453pt',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.skew(-0.3, 0.1),
                              child: Container(
                                color: Color.fromRGBO(221, 144, 240, 0.7),
                                width: 80,
                                height: 100,
                                child: Column(
                                  children: [
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 62, color: Colors.white),
                                    ),
                                    Text(
                                      '433pt',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ])
                    ]),
              ),
              Container(
                height: 500,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) => ListTile(
                    title: Text('name'),
                    leading: Image.asset('assets/top.png'),
                    trailing: Text('400pt'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
