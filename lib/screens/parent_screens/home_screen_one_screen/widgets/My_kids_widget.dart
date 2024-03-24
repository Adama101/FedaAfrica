import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class MyKidsWidget extends StatelessWidget {
  const MyKidsWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 81.h,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 99.v,
          width: 81.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.h,
                    vertical: 31.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 5.v),
                      Text(
                        "Mark",
                        style: theme.textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse27,
                height: 46.adaptSize,
                width: 46.adaptSize,
                radius: BorderRadius.circular(
                  23.h,
                ),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
