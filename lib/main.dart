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

  void _changeGridBorder() {
    setState(() {});
    borderWidth = math.Random().nextInt(10).toDouble() + 10;
    borderColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

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
                onTap: _changeGridBorder,
                firstTap: 'My name is... 🕵️‍♂️',
                secondTap: 'Krzysztof Woźniak 🧟‍♂️',
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  "I'm from Warsaw, I'm 29 years old, first country which I visited was Ukraine",
                ),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("I'm interesting flutter almost six mounths"),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('I train football and kabaddi'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              InkWell(
                onTap: _changeGridBorder,
                child: const Image(
                  image: AssetImage('images/krzysztofwozniak.jpg'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("I'm in national  Poland Kabaddi Team"),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child:
                    const Text('In the past I played in Legia Warsaw in Rugby'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('I thought that I do little more, but...'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                    'Be a teacher and have two schools and two own classes killed my free time'),
                color: const Color(0xFF3737A0).withOpacity(0.5),
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
      ),
    );
  }
}
