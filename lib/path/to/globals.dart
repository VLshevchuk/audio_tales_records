import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();
  static TextStyle get headline => GoogleFonts.aBeeZee(
        fontSize: 48.0,
        fontWeight: FontWeight.w700,
        color:const Color.fromRGBO(246, 246, 246, 1),
        letterSpacing: 0.6,
      );

  static TextStyle get bodyline => GoogleFonts.aBeeZee(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color:const Color.fromRGBO(246, 246, 246, 1),
        letterSpacing: 0.2,
      );
}
