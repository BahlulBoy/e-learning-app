import 'package:ayo_belajar/resource/main_color.dart';
import 'package:flutter/material.dart';

class YellowDot extends StatelessWidget {
  const YellowDot({
    super.key,
    required this.width,
    required this.height,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  final double width, height;
  final double? top, bottom, left, right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          color: MainColor.primaryColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
