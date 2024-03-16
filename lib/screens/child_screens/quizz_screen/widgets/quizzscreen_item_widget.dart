import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class QuizzscreenItemWidget extends StatelessWidget {
  const QuizzscreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 48.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCloseGray50001,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Container(
                      height: 20.v,
                      width: 234.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray30005,
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                        child: LinearProgressIndicator(
                          value: 0.24,
                          backgroundColor: appTheme.gray30005,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            appTheme.blueA200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 161.v),
          CustomImageView(
            imagePath: ImageConstant.imgGreenGrassInto,
            height: 177.v,
            width: 144.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
