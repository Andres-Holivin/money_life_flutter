import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ColorImages {
  // ignore: unused_element
  static Future<PaletteGenerator> _updatePaletteGenerator() async {
    var paletteGenerator = await PaletteGenerator.fromImageProvider(
      Image.asset("assets/images/MyBca.png").image,
    );
    return paletteGenerator;
  }
}
