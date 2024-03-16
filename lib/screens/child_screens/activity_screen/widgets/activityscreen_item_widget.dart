import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class ActivityscreenItemWidget extends StatelessWidget {
  const ActivityscreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sunday ",
                  style: CustomTextStyles.titleSmallLatoDeeporangeA20001,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDot,
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    top: 4.v,
                    bottom: 7.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "8.00 AM - 8.30AM",
                    style: CustomTextStyles.labelLargeLatoDeeporangeA20001,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Text(
                "30 ",
                style: theme.textTheme.displaySmall,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 34.h,
                  top: 22.v,
                  bottom: 8.v,
                ),
                child: Text(
                  "Minutes",
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
