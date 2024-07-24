import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static TextStyle get titleFont => GoogleFonts.getFont('Poppins').copyWith(fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle get subtitleFont =>
      GoogleFonts.getFont('Poppins').copyWith(fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle get normalFont => GoogleFonts.getFont('Poppins').copyWith(fontSize: 14);
  static TextStyle get subnormalFont => GoogleFonts.getFont('Poppins').copyWith(fontSize: 12);
  static TextStyle get smallFont => GoogleFonts.getFont('Poppins').copyWith(fontSize: 10);
}
