import 'package:em_cartaz/app/core/themes/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static final heading = GoogleFonts.poppins(
    color: AppColors.darkGradientSecond,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static final buttonText = GoogleFonts.poppins(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static final textAppBarHeading = GoogleFonts.poppins(
    color: AppColors.white,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    shadows: const [
      BoxShadow(
        color: AppColors.darkGradientFirst,
        offset: Offset(1.0, 1.0),
        blurRadius: 5.0,
      ),
    ],
  );

  static final textAppbar = GoogleFonts.poppins(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static final text = GoogleFonts.poppins(
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static final textSynops = GoogleFonts.poppins(
    color: AppColors.white,
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );
}
