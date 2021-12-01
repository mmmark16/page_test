import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_test/new_page.dart';
import 'dart:math';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  var rn = Random();

  var cvet = [
    Colors.orange,
    Colors.deepPurple,
    Colors.blue,
    Colors.green,
    Colors.lime,
    Colors.teal
  ];

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final _controller = FlipCardController();

generateContainer(Color color) {
final widget = FlipCard(
  flipOnTouch: false,
  onFlipDone: (status) {
    print(status);
  },
  controller: _controller,
  front: Container(
    width: 10,
    height: 10,
    color: color,
  ),
  back: Container(
    width: 10,
    height: 10,
    color: color,
  ),
);
print(_controller.state);
_controller.toggleCard();

  return widget;
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var myColor1;
  int r = 0;

  var matrix = List.generate(7,
      (index) => List.generate(5, (index) => generateContainer(Colors.amber)));

  Color color() {
    myColor1 = widget.cvet[widget.rn.nextInt(widget.cvet.length)];
    return myColor1;
  }

  void _incrementCounter() {
    setState(() {
      _counter += r;
    });
  }

  void kek() {
    setState(() {
      _counter = 0;
    });
  }

  func1() {
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    r = 1;
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 0; i < matrix.length; i++) {
        matrix[i][2] = generateContainer(Colors.black);
      }
      matrix[1][1] = generateContainer(Colors.black);
      matrix[6][1] = generateContainer(Colors.black);
      matrix[6][3] = generateContainer(Colors.black);
    });
  }

  func2() {
    r = 2;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 0; i < matrix[0].length; i++) {
        matrix[6][i] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      matrix[1][0] = generateContainer(Colors.black);
      matrix[1][4] = generateContainer(Colors.black);
      matrix[6][3] = generateContainer(Colors.black);
      matrix[5][1] = generateContainer(Colors.black);
      matrix[4][2] = generateContainer(Colors.black);
      matrix[3][3] = generateContainer(Colors.black);
      matrix[2][4] = generateContainer(Colors.black);
    });
  }

  func3() {
    r = 3;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[6][i] = generateContainer(Colors.black);
      }
      matrix[1][0] = generateContainer(Colors.black);
      matrix[5][0] = generateContainer(Colors.black);
      matrix[2][4] = generateContainer(Colors.black);
      matrix[1][4] = generateContainer(Colors.black);
      matrix[6][3] = generateContainer(Colors.black);
      matrix[5][4] = generateContainer(Colors.black);
      matrix[4][4] = generateContainer(Colors.black);
      matrix[3][3] = generateContainer(Colors.black);
      matrix[3][2] = generateContainer(Colors.black);
    });
  }

  func4() {
    r = 4;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 0; i < matrix.length; i++) {
        matrix[i][4] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length; i++) {
        matrix[3][i] = generateContainer(Colors.black);
      }
      for (int i = 0; i < 3; i++) {
        matrix[i][0] = generateContainer(Colors.black);
      }
    });
  }

  func5() {
    r = 5;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 0; i < matrix[0].length; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      matrix[1][0] = generateContainer(Colors.black);
      for (int i = 0; i < matrix[0].length - 1; i++) {
        matrix[2][i] = generateContainer(Colors.black);
      }
      for (int i = 3; i < 6; i++) {
        matrix[i][4] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[6][i] = generateContainer(Colors.black);
      }
      matrix[5][0] = generateContainer(Colors.black);
    });
  }

  func6() {
    r = 6;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 1; i < matrix.length - 1; i++) {
        matrix[i][0] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[3][i] = generateContainer(Colors.black);
      }
      for (int i = 4; i < matrix.length - 1; i++) {
        matrix[i][4] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[6][i] = generateContainer(Colors.black);
      }
    });
  }

  func7() {
    r = 7;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 0; i < matrix[0].length; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      matrix[1][4] = generateContainer(Colors.black);
      matrix[2][3] = generateContainer(Colors.black);
      matrix[3][2] = generateContainer(Colors.black);
      matrix[4][1] = generateContainer(Colors.black);
      matrix[5][1] = generateContainer(Colors.black);
      matrix[6][1] = generateContainer(Colors.black);
    });
  }

  func8() {
    r = 8;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 1; i < matrix.length - 1; i++) {
        matrix[i][0] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[3][i] = generateContainer(Colors.black);
      }
      for (int i = 4; i < matrix.length - 1; i++) {
        matrix[i][4] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[6][i] = generateContainer(Colors.black);
      }
      matrix[1][4] = generateContainer(Colors.black);
      matrix[2][4] = generateContainer(Colors.black);
      matrix[3][0] = generateContainer(Colors.amber);
    });
  }

  func9() {
    r = 9;
    matrix = List.generate(
        7,
        (index) =>
            List.generate(5, (index) => generateContainer(Colors.amber)));
    print(matrix.length);
    print(matrix[0].length);
    setState(() {
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[0][i] = generateContainer(Colors.black);
      }
      matrix[1][0] = generateContainer(Colors.black);
      matrix[2][0] = generateContainer(Colors.black);
      for (int i = 1; i < matrix.length - 2; i++) {
        matrix[i][4] = generateContainer(Colors.black);
      }
      for (int i = 1; i < matrix[0].length - 1; i++) {
        matrix[3][i] = generateContainer(Colors.black);
      }
      matrix[1][0] = generateContainer(Colors.black);
      matrix[5][3] = generateContainer(Colors.black);
      matrix[6][2] = generateContainer(Colors.black);
      matrix[6][1] = generateContainer(Colors.black);
    });

  }

  cifra(int index) {
    switch (index) {
      case 0:
        return func1;
        break;
      case 1:
        return func2;
        break;
      case 2:
        return func3;
        break;
      case 3:
        return func4;
        break;
      case 4:
        return func5;
        break;
      case 5:
        return func6;
        break;
      case 6:
        return func7;
        break;
      case 7:
        return func8;
        break;
      case 8:
        return func9;
        break;
    }
  }

  final List<String> entries = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.separated(
                          padding: const EdgeInsets.all(8),
                          itemCount: entries.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 50,
                              width: 60,
                              child: Center(
                                  child: ElevatedButton(
                                      onPressed: cifra(index),
                                      child: Text('${entries[index]}'))),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(
                            width: 40,
                          ),
                        )),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          width: 300,
                          height: 500,
                          child: GridView.count(
                            crossAxisCount: 5,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                            children: [...matrix.expand((el) => el).toList()],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Visibility(
        visible: _counter < 30,
        child: FloatingActionButton(
          splashColor: Colors.blue,
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        replacement: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => NewPage(kek)));
          },
          tooltip: 'Increment',
          child: Icon(Icons.attach_money),
        ),
      ),
    );
  }
}
