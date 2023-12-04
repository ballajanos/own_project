import 'package:flutter/material.dart';

class ColorTab extends StatelessWidget {
  const ColorTab({
    super.key,
    required this.color,
    this.width = 60,
    this.height = 60,
  });

  final Color color;

  final double? width;

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: SizedBox(
        width: width,
        height: height,
        child: ColoredBox(color: color),
      ),
    );
  }
}