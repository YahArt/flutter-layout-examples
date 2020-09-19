import 'dart:math';
import 'dart:ui';

import 'package:flame/anchor.dart';
import 'package:flame/components/component.dart';
import 'package:flame/game/base_game.dart';
import 'package:flame/palette.dart';

class Palette {
  static const PaletteEntry white = BasicPalette.white;
  static const PaletteEntry red = PaletteEntry(Color(0xFFFF0000));
  static const PaletteEntry blue = PaletteEntry(Color(0xFF0000FF));
}

class Square extends PositionComponent {
  @override
  void render(Canvas c) {
    prepareCanvas(c);

    c.drawRect(Rect.fromLTWH(0, 0, width, height), Palette.white.paint);
  }

  @override
  void onMount() {
    width = height = 100;
    anchor = Anchor.center;
  }

  @override
  void update(double t) {
    super.update(t);
    angle += 5 * t;
    angle %= 2 * pi;
  }
}

class ExampleGame extends BaseGame {
  ExampleGame() {
    add(Square()
      ..x = 100
      ..y = 100);
  }
}
