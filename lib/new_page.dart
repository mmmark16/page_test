import 'package:flutter/material.dart';
import 'dart:math';

import 'epilepsia.dart';

class NewPage extends StatefulWidget {
  Function callback;

  NewPage(this.callback);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  var rn = Random();

  var cvet = [
    Colors.orange,
    Colors.deepPurple,
    Colors.blue,
    Colors.green,
    Colors.lime,
    Colors.teal
  ];

  var popit = [
    Colors.black,
    Colors.white,
    Colors.red,
    Colors.amber,
    Colors.grey
  ];

  int _counter = 0;

  var myColor;

  var turbocolor;

  void _incrementCounter() {
    setState(() {
      _counter++;
      myColor = cvet[rn.nextInt(cvet.length)];
      turbocolor = popit[rn.nextInt(cvet.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      appBar: AppBar(
        title: Text("Саламчик пополамчик"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            widget.callback();
          },
        ),
        actions: <Widget> [
      IconButton(
      icon: Icon(Icons.arrow_forward),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => EP()));
      },
      )],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                  color: turbocolor,
                  fontSize: _counter >= 20 ? 0 : rn.nextDouble() * 50 + 10),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                  color: turbocolor,
                  fontSize: _counter >= 20 ? 0 : rn.nextDouble() * 200 + 30),
            ),
            Text(
              'Чел ты молодец',
              style: TextStyle(
                  color: Colors.black, fontSize: _counter >= 20 ? 90 : 0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
