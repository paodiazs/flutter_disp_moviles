import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
}
  void decrementCounter() {
    setState(() {
      counter--;
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 20),
), Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: incrementCounter,
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: decrementCounter,
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
),

], ),
], ),
), );
} }
void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}