import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray300,
                  borderRadius: BorderRadius.circular(21.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA400,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGrayTL21 => BoxDecoration(
        color: appTheme.gray30001,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillGrayTL211 => BoxDecoration(
        color: appTheme.gray30004,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen700,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGrayTL18 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillGrayTL212 => BoxDecoration(
        color: appTheme.gray20001,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillGrayTL213 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(21.h),
      );
  static BoxDecoration get fillGrayTL214 => BoxDecoration(
        color: appTheme.gray200,
        borderRadius: BorderRadius.circular(21.h),
      );
}
