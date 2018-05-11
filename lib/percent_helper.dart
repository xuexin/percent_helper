library percent_helper;

import 'dart:ui' as ui show window;

import 'package:flutter/widgets.dart' show MediaQueryData;

double _sourceHeight;
double _sourceWidth;
double _screenHeight;
double _screenWidth;

double height(num height) {
  checkSource();
  return height * _screenHeight / _sourceHeight;
}

double width(num width) {
  checkSource();
  return width * _screenWidth / _sourceWidth;
}

void checkSource() {
  if (_screenHeight == 0 || _sourceWidth == 0)
    setSource(_sourceHeight, _sourceWidth);
}


setSource(num sourceHeight, num sourceWidth) {
  var screenSize = MediaQueryData
      .fromWindow(ui.window)
      .size;
  _screenHeight = screenSize.height;
  _screenWidth = screenSize.width;
  _sourceHeight = sourceHeight.toDouble();
  _sourceWidth = sourceWidth.toDouble();
}
