import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final String text;
  final  fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const Buttons({
    Key? key,
    required this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: TextButton(/*
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),*/
          onPressed: () {
            callback(text);
          },
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          //color: fillColor != null ? Color(fillColor) : null,
          //textColor: Color(textColor),
        ),
      ),
    );
  }
}
