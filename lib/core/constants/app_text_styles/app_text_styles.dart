import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app_colors/app_colors.dart';

class AppTextStyles {
  static TextStyle heading = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor,
  );

  static TextStyle subHeading = TextStyle(
    fontSize: 26.sp,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor,
  );

  static TextStyle title = TextStyle(
    fontSize: 18.sp,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor,
  );

  static TextStyle bodyBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor,
  );

  static TextStyle body = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor,
  );

  static TextStyle caption = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor,
  );

  static TextStyle hint = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Itim',
    color: AppColors.whiteGrayColor.withValues(alpha: 0.4),
  );
}
