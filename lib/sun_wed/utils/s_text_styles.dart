import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/utils/s_app_colors.dart';

abstract final class STextStyles {
  static const white48Medium = TextStyle(
      fontSize: 48, color: SAppColors.white, fontWeight: FontWeight.w500);
  static const white24Normal = TextStyle(
      fontSize: 24, color: SAppColors.white, fontWeight: FontWeight.w400);
  static const blue32Medium = TextStyle(
      fontSize: 32, color: SAppColors.darkBlue, fontWeight: FontWeight.w500);
}
