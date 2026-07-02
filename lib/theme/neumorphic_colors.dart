import 'package:flutter/material.dart';

class NeumorphicColors {
  final Color background;
  final Color text;
  final Color shadowLight;
  final Color shadowDark;
  final bool isLight;

  const NeumorphicColors({
    required this.background,
    required this.text,
    required this.shadowLight,
    required this.shadowDark,
    required this.isLight,
  });

  static const light = NeumorphicColors(
    background: Color(0xFFEEF1F5),
    text: Color(0xFF1E2125),
    shadowLight: Color(0xFFFFFFFF),
    shadowDark: Color(0xFFD3D9E2),
    isLight: true,
  );

  static const dark = NeumorphicColors(
    background: Color(0xFF232529),
    text: Color(0xFFE5E7EB),
    shadowLight: Color(0xFF2C2F34),
    shadowDark: Color(0xFF1A1C1F),
    isLight: false,
  );
}

extension NeumorphicThemeContext on BuildContext {
  NeumorphicColors get neumorphicColors {
    final brightness = Theme.of(this).brightness;
    return brightness == Brightness.light
        ? NeumorphicColors.light
        : NeumorphicColors.dark;
  }
}
