import 'package:book_yourfly/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? borderColor;
  final double? textFieldFontSize;
  final Color? textColor;
  final Widget? suffixIcon;
  // final InputBorder? border;

  const TextFieldWidget(
      {super.key,
      required this.label,
      this.fontWeight,
      this.fontSize,
      this.borderColor,
      this.textColor,
      this.textFieldFontSize,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorHeight: 0,
      cursorColor: Colors.white,
      style: TextStyle(
        fontSize: textFieldFontSize,
        color: textColor,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 5),
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        label: TextWidget(
          text: label,
          fontWeight: fontWeight,
          color: borderColor,
          fontSize: fontSize,
        ),
        hintStyle: TextStyle(color: Colors.white),
        // border: UnderlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
