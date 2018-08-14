library percent_helper;

import 'dart:ui' as ui show window;

import 'package:flutter/widgets.dart' show MediaQueryData;

double _sourceHeight;
double _sourceWidth;
double _screenHeight;
double _screenWidth;
Map<String, bool> _safeArea;

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
    setSource(_sourceHeight, _sourceWidth, safeArea: _safeArea);
}

setSource(num sourceHeight, num sourceWidth,
    {Map<String, bool> safeArea = const {
      "left": false,
      "right": false,
      "top": false,
      "bottom": false,
    }}) {
  final mediaQueryData = MediaQueryData.fromWindow(ui.window);
  final screenSize = mediaQueryData.size;
  final safeAreaPadding = mediaQueryData.padding;
  var ignoreHeight = safeArea['top'] ? safeAreaPadding.top : 0;
  ignoreHeight += safeArea['bottom'] ? safeAreaPadding.bottom : 0;
  var ignoreWidth = safeArea['left'] ? safeAreaPadding.left : 0;
  ignoreWidth += safeArea['right'] ? safeAreaPadding.right : 0;
  _screenHeight = screenSize.height - ignoreHeight;
  _screenWidth = screenSize.width - ignoreWidth;
  _sourceHeight = sourceHeight.toDouble();
  _sourceWidth = sourceWidth.toDouble();
  _safeArea = safeArea;
}
