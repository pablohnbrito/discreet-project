import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.tealA200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        displaySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 36.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray50001,
          fontSize: 15.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray700 => Color(0XFF336F73);
// Cyan
  Color get cyan400 => Color(0XFF24D7CC);
// DeepOrange
  Color get deepOrangeA400 => Color(0XFFF64B01);
// Gray
  Color get gray50 => Color(0XFFFFF7F7);
  Color get gray500 => Color(0XFFA1A1A1);
  Color get gray50001 => Color(0XFF959494);
  Color get gray700 => Color(0XFF666262);
  Color get gray800 => Color(0XFF404040);
  Color get gray900 => Color(0XFF141212);
// LightBlue
  Color get lightBlue300 => Color(0XFF50B3FA);
// LightGreen
  Color get lightGreen500 => Color(0XFF85D733);
// Teal
  Color get tealA200 => Color(0XFF50FAD1);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
