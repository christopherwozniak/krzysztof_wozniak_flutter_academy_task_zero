import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double borderWidth = 20;
  Color borderColor = Colors.yellowAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: const Center(
            child: Text(
          'Krzysztof Woźniak Task Zero',
        )),
        gradient: const LinearGradient(
          colors: [
            Colors.blueAccent,
            Colors.yellowAccent,
          ],
        ),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          color: borderColor,
          child: GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: EdgeInsets.all(borderWidth),
            crossAxisSpacing: borderWidth,
            mainAxisSpacing: borderWidth,
            crossAxisCount: 3,
            children: <Widget>[
              GridOneElement(
                onTap: () {
                  setState(() {});
                  borderWidth = 10;
                  borderColor =
                      Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                          .withOpacity(1.0);
                },
                firstTap: 'My name is... 🕵️‍♂️',
                secondTap: 'Krzysztof Woźniak 🧟‍♂️',
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'Heed not the rabble',
                ),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridOneElement extends StatefulWidget {
  const GridOneElement({
    Key? key,
    required this.onTap,
    required this.firstTap,
    required this.secondTap,
  }) : super(key: key);

  final void Function() onTap;
  final String firstTap;
  final String secondTap;

  @override
  State<GridOneElement> createState() => _GridOneElementState();
}

class _GridOneElementState extends State<GridOneElement> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
        widget.onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            isTapped ? widget.secondTap : widget.firstTap,
          ),
        ),
        color: const Color(0xFF3737A0).withOpacity(0.5),
      ),
    );
  }
}
