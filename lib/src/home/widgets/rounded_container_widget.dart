import 'package:flutter/material.dart';

class RoundedContainerWidget extends StatelessWidget {
  const RoundedContainerWidget({
    Key key,
    this.width,
    this.height,
    this.child,
    this.border,
    this.padding,
    this.color,
    this.gradient,
    this.margin,
  }) : super(key: key);

  final double width;
  final double height;
  final Widget child;
  final Border border;
  final EdgeInsets padding;
  final Color color;
  final LinearGradient gradient;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: margin ?? EdgeInsets.only(right: 10),
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: border,
        color: color ?? Color(0xFF59A05E),
        gradient: gradient,
      ),
      child: child,
    );
  }
}
