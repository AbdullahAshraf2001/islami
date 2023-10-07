import 'package:flutter/cupertino.dart';
import 'package:islami/ui/utilits/app_colors.dart';

abstract class AppTheme {
  static const appBarTitleTextStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.accent);

  static const QuranTabTitleTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.accent);
}
