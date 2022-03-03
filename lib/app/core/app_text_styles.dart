import 'package:ezmenu/app/core/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static final regular = GoogleFonts.inter(
      fontWeight: FontWeight.normal, fontSize: AppSizes.size14px);
  static final secondRegular = GoogleFonts.inter(
      fontWeight: FontWeight.normal, fontSize: AppSizes.size12px);
  static final miniBold = GoogleFonts.inter(
      fontWeight: FontWeight.bold, fontSize: AppSizes.size11px);
  static final mini = GoogleFonts.inter(
      fontWeight: FontWeight.normal, fontSize: AppSizes.size11px);
  static final semiBold = GoogleFonts.inter(
      fontWeight: FontWeight.w700, fontSize: AppSizes.size16px);
  static final navBold = GoogleFonts.inter(
      fontWeight: FontWeight.bold, fontSize: AppSizes.size13px);
  static final navRegular = GoogleFonts.inter(
      fontWeight: FontWeight.normal, fontSize: AppSizes.size13px);
  static final titleMedium = GoogleFonts.inter(
      fontWeight: FontWeight.w600, fontSize: AppSizes.size24px);
  static final bold = GoogleFonts.inter(
      fontWeight: FontWeight.bold, fontSize: AppSizes.size18px);
  static final mediumBold = GoogleFonts.inter(
      fontWeight: FontWeight.bold, fontSize: AppSizes.size14px);
  static final subtitleMedium = GoogleFonts.inter(
      fontWeight: FontWeight.w600, fontSize: AppSizes.size18px);
}
