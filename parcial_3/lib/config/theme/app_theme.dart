import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6200EE);

const List<Color> _colorThemes = [
  _customColor, // primary
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.red,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
        'Los colores deben estar entre 0 y ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark,
    );
  }
}
