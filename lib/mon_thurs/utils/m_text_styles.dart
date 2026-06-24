import 'package:flutter/material.dart';

import 'm_app_colors.dart';

abstract class AppTextStyles {
  ///Fonts for calculator
  static const white48Medium = TextStyle(
      fontSize: 48, color: AppColors.white, fontWeight: FontWeight.w500);
  static const white24Normal = TextStyle(
      fontSize: 24, color: AppColors.white, fontWeight: FontWeight.w400);
  static const blue32Medium = TextStyle(
      fontSize: 32, color: AppColors.darkBlue, fontWeight: FontWeight.w500);

  ///Font from xo
  static const black32SemiBold = TextStyle(
      fontSize: 32, color: AppColors.black, fontWeight: FontWeight.w600);
  static const white36Bold = TextStyle(
      fontSize: 36, color: AppColors.white, fontWeight: FontWeight.w700);
}
