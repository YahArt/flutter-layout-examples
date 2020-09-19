import 'package:flutter/material.dart';
import 'package:flutter_layout_tutorials/example_game.dart';
import 'package:flutter_layout_tutorials/layout_widget_example.dart';

class FlameLayoutExample extends StatelessWidget
    implements LayoutWidgetExample {
  final ExampleGame _exampleGame = ExampleGame();

  @override
  String getTitleDescription() {
    return 'Flame Layout Example';
  }

  @override
  Widget build(BuildContext context) {
    return _exampleGame.widget;
  }
}
