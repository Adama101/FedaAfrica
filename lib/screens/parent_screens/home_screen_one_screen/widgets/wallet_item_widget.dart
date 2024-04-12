import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class WalletItemWidget extends StatelessWidget {
  WalletItemWidget({
    Key? key,
    this.onTapChild,
    this.onTapTask,
  }) : super(key: key);

  final VoidCallback? onTapChild;
  final VoidCallback? onTapTask;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.addChildScreenTwoScreen);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWallet,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
                SizedBox(height: 20.v),
                Text(
                  "Add a Child",
                  style: CustomTextStyles.titleLargeNunito_1,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.setTaskDialogScreen);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
            decoration: AppDecoration.fillOrange.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgListUiAlt,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 20.v),
                Text(
                  "Set a Task",
                  style: CustomTextStyles.titleLargeNunito_1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
