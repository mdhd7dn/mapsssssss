import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mahm/Page1.dart';
import 'package:mahm/page0.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWelcome(),
    );
  }
}

class HomeWelcome extends StatefulWidget {
  const HomeWelcome({super.key});

  @override
  _HomeWelcomeState createState() => _HomeWelcomeState();
}

class _HomeWelcomeState extends State<HomeWelcome> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Page0()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.purple[100]),
        titleSpacing: 5,
        title: Text(
          'اهلا بك في مجمع المدينة',
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                "imaegs/SplachSrceen.jpg",
              ),
            ),
            Container(
              width: double.infinity,
              child: Image.network(
                "imaegs/SplashScreen2.jpeg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
