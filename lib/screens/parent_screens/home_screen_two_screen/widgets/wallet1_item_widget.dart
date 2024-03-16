import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class Wallet1ItemWidget extends StatelessWidget {
  Wallet1ItemWidget({
    Key? key,
    this.onTapFourteen,
    this.onTapThirteen,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFourteen;

  VoidCallback? onTapThirteen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            onTapFourteen!.call();
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWallet,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Add a Child",
                      style: CustomTextStyles.titleLargeNunito_1,
                    ),
                  ),
                ),
                SizedBox(height: 49.v),
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Text(
                    "Create",
                    style: CustomTextStyles.titleSmallLatoBluegray100,
                  ),
                ),
                SizedBox(height: 3.v),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 167.v,
          width: 155.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 15.h,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "Set",
                    style: CustomTextStyles.titleSmallLatoBluegray700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    onTapThirteen!.call();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgListUiAlt,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: 50.h,
                          margin: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "Set a \nTask ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleLargeNunito_1,
                          ),
                        ),
                        SizedBox(height: 46.v),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
