import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sample_app/utils/colors.dart';

class AppTheme {
  static ThemeData responsiveTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.bgColor,
    textTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
          fontSize: 34.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: GoogleFonts.roboto(
          fontSize: 32.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: GoogleFonts.roboto(
          fontSize: 30.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: GoogleFonts.roboto(
          fontSize: 28.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: 26.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: GoogleFonts.roboto(
          fontSize: 24.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize: 22.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: 20.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.roboto(
          fontSize: 18.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.roboto(
          fontSize: 16.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: 14.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: GoogleFonts.roboto(
          fontSize: 12.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: GoogleFonts.roboto(
          fontSize: 10.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w400,
        ),
        labelMedium: GoogleFonts.roboto(
          fontSize: 8.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: GoogleFonts.roboto(
          fontSize: 6.sp,
          color: AppColors.textPrimaryColor,
          fontWeight: FontWeight.w400,
        )),
    primaryTextTheme: TextTheme(
        displayLarge: GoogleFonts.roboto(
          fontSize: 34.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: GoogleFonts.roboto(
          fontSize: 32.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: GoogleFonts.roboto(
          fontSize: 30.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: GoogleFonts.roboto(
          fontSize: 28.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: GoogleFonts.roboto(
          fontSize: 26.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: GoogleFonts.roboto(
          fontSize: 24.sp,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize: 22.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: 20.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: GoogleFonts.roboto(
          fontSize: 18.sp,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.roboto(
          fontSize: 16.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: 14.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: GoogleFonts.roboto(
          fontSize: 12.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: GoogleFonts.roboto(
          fontSize: 10.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        labelMedium: GoogleFonts.roboto(
          fontSize: 8.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        labelSmall: GoogleFonts.roboto(
          fontSize: 6.sp,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        )),
  );
}
