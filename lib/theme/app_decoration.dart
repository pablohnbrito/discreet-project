import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray800, appTheme.gray700, appTheme.gray500],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.lightGreen500,
        border: Border.all(
          color: appTheme.gray50,
          width: 5.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.cyan400,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: appTheme.deepOrangeA400,
        border: Border.all(
          color: appTheme.whiteA700,
          width: 5.h,
        ),
      );
}

class BorderRadiusStyle {}
