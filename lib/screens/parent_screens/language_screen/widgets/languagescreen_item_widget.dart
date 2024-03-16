import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class LanguagescreenItemWidget extends StatelessWidget {
  const LanguagescreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 48.adaptSize,
          width: 48.adaptSize,
          margin: EdgeInsets.only(bottom: 11.v),
          decoration: AppDecoration.fillGray90001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle21,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 14.v,
            bottom: 24.v,
          ),
          child: Text(
            "English",
            style: CustomTextStyles.titleMediumLatoGray90001Medium,
          ),
        ),
        Spacer(),
        Container(
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(
            top: 15.v,
            bottom: 24.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillBlueA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgStroke3,
            height: 5.v,
            width: 8.h,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
