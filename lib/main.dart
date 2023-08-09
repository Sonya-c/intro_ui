import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> collumChildren = [];
    List<Widget> optionList = [];

    for (int i = 1; i <= 4; i++) {
      List<Widget> rowChildren = [];
      for (int j = 1; j <= 4; j++) {
        rowChildren.add(Container(
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Text(
            (Random().nextInt(4) + 1).toString(),
            style: const TextStyle(fontSize: 30),
          ),
        ));
      }
      collumChildren.add(Row(
        children: rowChildren,
      ));
      optionList.add(Container(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          "Option $i",
          style: const TextStyle(fontSize: 20),
        ),
      ));
    }
    return MaterialApp(
      title: 'Sodoku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Soduku"),
          backgroundColor: Colors.purpleAccent.shade100,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: collumChildren,
                )
              ]),
            ),
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: optionList),
            )
          ],
        ),
      ),
    );
  }
}
// test
