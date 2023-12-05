import 'package:flutter/material.dart';

class ColorTab extends StatelessWidget {
  const ColorTab({
    Key? key,
    required this.color,
    this.width = 80,
    this.height = 80,
    this.icon,
    this.child,
  }) : super(key: key);

  final Color color;
  final double? width;
  final double? height;
  final Icon? icon;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon!,
            if (child != null)
              SizedBox(width: 4), // Add space between icon and child
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
