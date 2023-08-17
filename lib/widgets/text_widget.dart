import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  const TextWidget(
      {super.key,
      required this.text,
      this.fontWeight,
      this.fontSize,
      this.color});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.text,
        style: TextStyle(
          fontSize: widget.fontSize,
          // fontWeight: FontWeight.bold,
          color: widget.color ?? Colors.black,
        ));
  }
}
