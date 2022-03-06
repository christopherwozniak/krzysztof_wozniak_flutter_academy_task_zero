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
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 120,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 120,
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 120,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 120,
                          color: Colors.purple,
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 120,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 120,
                          color: Colors.orange,
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(height: 120, color: Colors.green),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(height: 120, color: Colors.grey),
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
            // body: GridView.count(
            //   crossAxisCount: 2,
            //   children: List.generate(100, (index) {
            //     return Center(
            //       child: Text(
            //         'Item $index',
            //         style: Theme.of(context).textTheme.headline5,
            //       ),
            //     );
            //   }),
            // )));

  
  

