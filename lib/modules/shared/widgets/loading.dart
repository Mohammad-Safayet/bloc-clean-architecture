import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const Loading({
    Key? key,
    required this.child,
    this.bgColor,
    this.padding,
    this.borderRadius = 12.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.7),
            spreadRadius: 3,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
        color: bgColor ?? Theme.of(context).colorScheme.onPrimary,
      ),
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
