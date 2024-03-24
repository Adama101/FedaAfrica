import 'package:flutter/material.dart';
//import '../core/app_export.dart';
import 'package:fedaafrica/core/app_export.dart';
export '../theme/custom_button_style.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL22 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineOrangeA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amberA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
        shadowColor: appTheme.orangeA200,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL101 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.51),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
