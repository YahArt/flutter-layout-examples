import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_layout_tutorials/layout_widget_example.dart';

class ConnectFourLayoutExample extends StatelessWidget
    implements LayoutWidgetExample {
  @override
  String getTitleDescription() {
    return 'Connect Four';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  'Display turn information',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Expanded(
            flex: 9,
            child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: ConnectFourBoard(width: 7, height: 6))),
      ],
    );
  }
}

class ConnectFourBoard extends StatelessWidget {
  final int width;
  final int height;
  final List<Color> _colors = [Colors.white30, Colors.yellow, Colors.red];

  ConnectFourBoard({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: width,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(width * height, (index) {
        // Pick a random color
        final randomIndex = Random.secure().nextInt(_colors.length);
        final discColor = _colors[randomIndex];
        return ColoredDisc(
          discColor: discColor,
        );
      }),
    );
  }
}

class ColoredDisc extends StatelessWidget {
  final Color discColor;

  ColoredDisc({this.discColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: discColor, shape: BoxShape.circle),
    );
  }
}
