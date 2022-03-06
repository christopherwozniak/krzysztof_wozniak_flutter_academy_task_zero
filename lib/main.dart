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
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                );
              }),
            )));
  }
}
