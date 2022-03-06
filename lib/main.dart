import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: NewGradientAppBar(
            title: const Text('Krzysztof Woźniak'),
            gradient: const LinearGradient(
                colors: [Colors.blueAccent, Colors.yellow])),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  "Zgadnij jak się nazywam? Mała podpowiedź u góry "),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  "Zgadnij jak się nazywam? Mała podpowiedź u góry "),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  "Zgadnij jak się nazywam? Mała podpowiedź u góry "),
              color: Colors.teal[100],
            ),
          ],
        ),
      ),
    );
  }
}
