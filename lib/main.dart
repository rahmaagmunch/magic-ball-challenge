import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff9AD0EC),
        appBar: AppBar(
          title: Text('Ask Me Anything',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Color(0xff1572A1),
        ),
        body: BallPage(),
      ),
    ),
  );
}
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.all(16),
          child: TextButton(
              child: Image(image: AssetImage('images/ball$ballNumber.png')),
              onPressed: (){
                setState(() {
                  //the range are 0-4
                  ballNumber = Random().nextInt(5) + 1;
                });
            }
          )
      ),
    );
  }
}

