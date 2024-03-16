import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class WalletItemWidget extends StatelessWidget {
  WalletItemWidget({
    Key? key,
    this.onTapNineteen,
    this.onTapEighteen,
  }) : super(
          key: key,
        );

  VoidCallback? onTapNineteen;

  VoidCallback? onTapEighteen;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            onTapNineteen!.call();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWallet,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "Add a Child",
                      style: CustomTextStyles.titleLargeNunito_1,
                    ),
                  ),
                ),
                SizedBox(height: 49.v),
                Text(
                  "Create",
                  style: CustomTextStyles.titleSmallLatoBluegray100,
                ),
                SizedBox(height: 7.v),
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
                    onTapEighteen!.call();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
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
                        SizedBox(height: 16.v),
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
                        SizedBox(height: 52.v),
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
