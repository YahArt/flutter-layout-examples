import 'package:flutter/material.dart';
import 'package:flutter_layout_tutorials/layout_widget_example.dart';

class TicTacToeBoardLayoutExample extends StatelessWidget
    implements LayoutWidgetExample {
  @override
  String getTitleDescription() {
    return 'Tic Tac Toe';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(
                9,
                (index) => Container(
                      decoration: BoxDecoration(
                          border: Border.all(), color: Colors.blue),
                      child: Center(
                        child: Text(
                          index.isEven ? 'X' : 'O',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ))),
      ),
    );
  }
}
