import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:math';


void main() {


  ///set started testing setting
  setUp(() {

  });

  testWidgets('when GridView generate then the number of elements is 14', (tester) async {
    generateContainer(Color color) {
      final widget = Container(
        color: Colors.amber,
      );
      return widget;
    }
    var matrix = List.generate(2,
            (index) => List.generate(7, (index) => generateContainer(Colors.amber)));
    await tester.pumpWidget(TestWidget(GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      children: [...matrix.expand((el) => el).toList()],
    ),));
    final ButtonFinder = find.byType(Container);
    final count = tester.widgetList<Container>(ButtonFinder).length;
    expect(count, 14);
  });

  testWidgets('when GridView generate then the number of elements is 20', (tester) async {
    generateContainer(Color color) {
      final widget = Container(
        color: Colors.amber,
      );
      return widget;
    }
    var matrix = List.generate(7,
            (index) => List.generate(5, (index) => generateContainer(Colors.amber)));
    await tester.pumpWidget(TestWidget(GridView.count(
      crossAxisCount: 5,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
      children: [...matrix.expand((el) => el).toList()],
    ),));
    final ButtonFinder = find.byType(Container);
    final count = tester.widgetList<Container>(ButtonFinder).length;
    expect(count, 20);
  });

  testWidgets('when ListView initialization then first element has text 1', (tester) async {
    await tester.pumpWidget(TestWidget(ElevatedButton(
        onPressed: (){},
        child: Text('1'))),);
    final ButtonFinder = find.byType(ElevatedButton).first;


    expect(ButtonFinder, findsOneWidget);
  });
  testWidgets('when ListView initialization then last element has text 9', (tester) async {
    await tester.pumpWidget(TestWidget(ElevatedButton(
        onPressed: (){},
        child: Text('9'))),);
    final ButtonFinder = find.byType(ElevatedButton).last;


    expect(ButtonFinder, findsOneWidget);
  });
}


class TestWidget extends StatelessWidget {
  final Widget child;

  const TestWidget(this.child);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: child,
    );
  }
}