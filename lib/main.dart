import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ask Me Anything'), centerTitle: true),
        body: Billard(),
      ),
    );
  }
}

class Billard extends StatefulWidget {
  const Billard({Key? key}) : super(key: key);

  @override
  _BillardState createState() => _BillardState();
}

class _BillardState extends State<Billard> {
  int numBillard = 2;
  void change() {
    Random random = Random.secure();

    int randomInt = random.nextInt(5) + 1;
    setState(() {
      numBillard = randomInt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              change();
            },
            child: Image.asset(
              'images/ball$numBillard.png',
            ),
          ),
        ],
      ),
    );
  }
}
