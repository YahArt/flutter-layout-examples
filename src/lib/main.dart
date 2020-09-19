import 'package:flutter/material.dart';
import 'package:flutter_layout_tutorials/connect_four_layout_example.dart';
import 'package:flutter_layout_tutorials/flame_layout_example.dart';
import 'package:flutter_layout_tutorials/layout_widget_example.dart';
import 'package:flutter_layout_tutorials/tic_tac_toe_board_layout_example.dart';

import 'grid_view_layout_example.dart';

void main() => runApp(LayoutApp());

class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutWidget(),
      title: 'Flutter Tutorial Layouts',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LayoutWidget extends StatefulWidget {
  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  int _currentWidgetExampleIndex = 0;
  final List<LayoutWidgetExample> _widgets = [
    FlameLayoutExample(),
    ConnectFourLayoutExample(),
    TicTacToeBoardLayoutExample(),
    GridViewLayoutExample(),
  ];
  LayoutWidgetExample _currentWidgetExample;

  _showNextWidgetExample() {
    setState(() {
      _currentWidgetExampleIndex++;
      _currentWidgetExampleIndex = _currentWidgetExampleIndex % _widgets.length;
      _currentWidgetExample = _widgets[_currentWidgetExampleIndex];
    });
  }

  _LayoutWidgetState() {
    _currentWidgetExample = _widgets[_currentWidgetExampleIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            '${_currentWidgetExample.getTitleDescription()}',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showNextWidgetExample();
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.forward,
          color: Colors.white,
        ),
      ),
      body: _currentWidgetExample,
    );
  }
}
