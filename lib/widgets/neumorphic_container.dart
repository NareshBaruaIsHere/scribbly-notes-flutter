import 'package:flutter/material.dart';
import '../theme/neumorphic_colors.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget? child;
  final double borderRadius;
  final double elevation;
  final bool isPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  const NeumorphicContainer({
    super.key,
    this.child,
    this.borderRadius = 16.0,
    this.elevation = 6.0,
    this.isPressed = false,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.neumorphicColors;
    
    // In pressed state, we simulate an inner shadow by drastically reducing elevation
    // or reversing the shadows slightly. Since pure inner shadow is complex in basic Flutter,
    // we use a flatter approach for pressed state.
    final currentElevation = isPressed ? 1.0 : elevation;
    final offset = isPressed ? 2.0 : elevation * 0.8;

    final container = AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          // Dark shadow (bottom right)
          BoxShadow(
            color: colors.shadowDark,
            offset: Offset(offset, offset),
            blurRadius: currentElevation,
            spreadRadius: isPressed ? -1 : 1,
          ),
          // Light shadow (top left)
          BoxShadow(
            color: colors.shadowLight,
            offset: Offset(-offset, -offset),
            blurRadius: currentElevation,
            spreadRadius: isPressed ? -1 : 1,
          ),
        ],
      ),
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: container,
      );
    }

    return container;
  }
}
