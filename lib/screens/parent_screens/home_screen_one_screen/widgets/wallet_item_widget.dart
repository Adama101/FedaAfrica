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
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "Add a Child",
                      style: CustomTextStyles.titleLargeNunito_1,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                Text(
                  "Create",
                  style: CustomTextStyles.titleSmallLatoBluegray100,
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 130.v,
          width: 100.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomRight,
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            "Set a Task ",
                            overflow: TextOverflow.clip,
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
