import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: const Ball(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNummer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNummer = Random().nextInt(5) + 1;
          });
          print('I got clicked: ' + ballNummer.toString());
        },
        child: Image.asset(
          'images/ball$ballNummer.png',
          fit: BoxFit.cover, // gør at billedet fylder og skaleres
        ),
      ),
    );
  }
}
