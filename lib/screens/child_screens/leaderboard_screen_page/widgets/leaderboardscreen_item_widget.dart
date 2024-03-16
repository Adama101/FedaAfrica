import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class LeaderboardscreenItemWidget extends StatelessWidget {
  LeaderboardscreenItemWidget({
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFrame!.call();
      },
      child: Container(
        decoration: AppDecoration.outlineBlack9001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          children: [
            Container(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.fillOnErrorContainer,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTicket,
                    height: 25.v,
                    width: 24.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "1",
                        style: CustomTextStyles.bodySmallABeeZeeBlack90010,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 208.h,
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineBlack9002,
              child: Row(
                children: [
                  SizedBox(
                    height: 38.v,
                    width: 41.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse426,
                          height: 37.v,
                          width: 36.h,
                          radius: BorderRadius.circular(
                            18.h,
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "9",
                                      style: CustomTextStyles
                                          .bodySmallABeeZeeOnErrorContainer,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 11.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      "Praise Ohua",
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCheckmarkAmberA200,
              height: 22.v,
              width: 28.h,
              margin: EdgeInsets.symmetric(vertical: 14.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                top: 15.v,
                bottom: 16.v,
              ),
              child: Text(
                "507",
                style: CustomTextStyles.bodyMediumABeeZeeBlack90015,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
