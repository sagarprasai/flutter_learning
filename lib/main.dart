import 'package:flutter/material.dart';
import 'dart:math';
import 'data/collections.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        title: "Flutter Demo",
        color: Colors.blue,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage()));
  }
}

// class MyHomePage extends StatelessWidget {
//   late String? title;
//   MyHomePage({super.key, required title});

//   @override
//   Widget build(BuildContext build) {
//     return (Scaffold(
//       appBar:
//           AppBar(backgroundColor: Colors.orange, title: const Text("Homepage")),
//       body: Center(child: Text("Hello World!")),
//     ));
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  String? startupName = 'Your startup Name';

  // from 0 upto 99 included

  void generator() {
    Random random = new Random();
    int randomNumber1 = random.nextInt(49);
    int randomNumber2 = random.nextInt(49);
    setState(() {
      startupName = collection1[randomNumber1] + collection2[randomNumber2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Startup Name Generate')),
      body: Center(
          child: Text(
        '$startupName',
        textScaleFactor: 2.0,
      )),
      floatingActionButton:
          FloatingActionButton(onPressed: generator, child: (Icon(Icons.add))),
    ));
  }
}
