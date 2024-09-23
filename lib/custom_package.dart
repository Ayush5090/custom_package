library custom_package;

import 'package:flutter/material.dart';
export 'custom_package.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final Color? bgColor;
  final double? borderRadius;
  final double? elevation;
  final Size? buttonSize;

  const CustomButton(
      {super.key,
      required this.onTap,
      required this.child,
      this.bgColor,
      this.borderRadius,
      this.elevation,
      this.buttonSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            elevation: elevation,
            fixedSize: buttonSize,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 15))),
        child: child);
  }
}
