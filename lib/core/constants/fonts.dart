import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppFonts {
  static var textStyle16gray=  GoogleFonts.nunitoSans( fontSize: 16,color: Color(0XFF717171), fontWeight: FontWeight.w500);
  static var textStyle16white= GoogleFonts.nunitoSans( fontSize: 16,color: Color(0xffF9F9F9), fontWeight: FontWeight.w600 );
  static var textStyle14gray=  GoogleFonts.workSans( fontSize: 14,color: AppColors.gray, fontWeight: FontWeight.w500);
  static var headlineTextStyle= GoogleFonts.montserratAlternates(fontWeight: FontWeight.w600, color: AppColors.primaryPurple, fontSize: 36);
  static var textStyle20black=  GoogleFonts.nunitoSans( fontSize: 20,fontWeight: FontWeight.w500,color: const Color(0xff242424));
  static var textStyle16black=  GoogleFonts.nunitoSans( fontSize: 16,fontWeight: FontWeight.w600,color: const Color(0xff242424));
}