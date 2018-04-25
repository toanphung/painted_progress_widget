import 'package:flutter/material.dart';

import 'ProgressButton.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProgressButtonDemo(),
      ),
    );
  }
}

class ProgressButtonDemo extends StatefulWidget {
  @override
  _ProgressButtonDemoState createState() => new _ProgressButtonDemoState();
}

class _ProgressButtonDemoState extends State<ProgressButtonDemo> {
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ProgressButton(
          percentProgress: progress,
        ),
        Slider(
          value: progress,
          min: 0.0,
          max: 100.0,
          onChanged: (double value) => setState(() => progress = value),
        )
      ],
    );
  }
}
