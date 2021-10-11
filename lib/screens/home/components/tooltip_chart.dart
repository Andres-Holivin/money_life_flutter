import 'dart:math';

import 'package:charts_flutter/flutter.dart';
// ignore: implementation_imports
import 'package:charts_flutter/src/text_element.dart' as text;
// ignore: implementation_imports
import 'package:charts_flutter/src/text_style.dart' as style;

class TooltipChart extends CircleSymbolRenderer {
  static num value = 0;
  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern,
      Color? fillColor,
      FillPatternType? fillPattern,
      Color? strokeColor,
      double? strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);
    canvas.drawRect(
        Rectangle(bounds.left - 5, bounds.top - 30, bounds.width + 10,
            bounds.height + 10),
        fill: Color.transparent);
    var textStyle = style.TextStyle();
    textStyle.color = Color.white;
    textStyle.fontSize = 12;
    canvas.drawText(text.TextElement("$value", style: textStyle),
        (bounds.left).round(), (bounds.top - 28).round());
  }
}
