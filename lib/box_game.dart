import 'dart:ui';
import 'package:flame/game.dart';
import 'package:flame/extensions.dart';
import 'package:flame/input.dart';

class BoxGame extends FlameGame with TapDetector {
  bool hasWon = false;

  @override
  void onTapDown(TapDownInfo info) {
    var screenCenter = size / 2;
    if (info.raw.globalPosition.dx >= screenCenter.x - 75
      && info.raw.globalPosition.dx <= screenCenter.x + 75
      && info.raw.globalPosition.dy >= screenCenter.y - 75
      && info.raw.globalPosition.dy <= screenCenter.y + 75
    ) {
      hasWon = true;
    }
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    //bg color
    Rect bgRect = size.toRect();
    Paint bgPaint = Paint();
    bgPaint.color = const Color(0xff000000);
    canvas.drawRect(bgRect, bgPaint);

    //draw a box
    var screenCenter = size / 2;
    var boxRect = Rect.fromLTWH(
      screenCenter.x - 75, 
      screenCenter.y - 75,
      150,
      150
    );
    var boxPaint = Paint();
    if(hasWon) {
      boxPaint.color = const Color(0xff00ff00);
    }
    else {
      boxPaint.color = const Color(0xffffffff);
    }
    canvas.drawRect(boxRect, boxPaint);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}