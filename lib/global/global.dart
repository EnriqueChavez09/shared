// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

class CustomColors {
  static final blue = Color(0xFF061729);
  static final blue100 = Color(0xFF0A4B4F);
  static final yellow = Color(0xFFFFB100);
  static final grey200 = Color(0xFFE7FFDC);
  static final white = Color(0xFFFFFFFF);
  static final black54 = Color(0xFF1B1D1A);
  static final grey = Color(0xFF959799);
  static final ligthBlue = Color(0xFF43B995);
  static final ligthBlue100 = Color(0xFF349DFD);
  static final ligthBlue200 = Color(0xFF3898A9);
  static final blue200 = Color(0xFF2F303B);
  static final grey300 = Color(0xFF85DD9B);
  // static final pink = Color(0xffE9357E);
  // static final purple = Color(0xff8F7296);
  // static final blue = Color(0xff0480DA);
  // static final red = Color(0xffD6281D);
  // static final grey = Color(0xffB7B7B7);
}

final normalPhoneTheme = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(),
  scaffoldBackgroundColor: CustomColors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: CustomColors.black54,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: CustomColors.black54,
  ),
  fontFamily: "Manrope",
);

// final smallPhoneTheme = ThemeData(
//   primaryColor: Colors.black,
//   accentColor: Colors.black,
//   scaffoldBackgroundColor: Colors.white,
//   // textTheme: TextTheme(
//   //   headline1: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 27, color: CustomColors.pink, fontWeight: FontWeight.w700) ),
//   //   headline2: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 21, color: Colors.black, fontWeight: FontWeight.w400) ),
//   //   headline3: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700) ),
//   //   headline4: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600) ),
//   //   // bodyText1: TextStyle(fontSize: 15.0, color: CustomColors.darkGray),
//   //   bodyText2: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400) ),
//   //   caption:  GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: CustomColors.grey, fontWeight: FontWeight.w400) ),
//   //   button: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600) ),

//   // ),
//   appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
// );
