import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'box_game.dart';


void main() {
  runApp(GameWidget(game: BoxGame()));
  Flame.device.fullScreen();
  Flame.device.setOrientation(DeviceOrientation.portraitUp);
}
