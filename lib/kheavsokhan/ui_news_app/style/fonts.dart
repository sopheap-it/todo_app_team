import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  static TextStyle textStyleOne({double? fontSize, Color? color, FontWeight? fontWeight, double? height}) {
    return GoogleFonts.lato(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
    );
  }
}
