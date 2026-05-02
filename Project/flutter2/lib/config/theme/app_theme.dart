import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF0B4FE4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.teal,
  Colors.yellow,
  Colors.red,
  Colors.orange,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'El color seleccionado debe estar entre 0 y ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
