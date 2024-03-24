import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class Add_ChildWidget extends StatelessWidget {
  const Add_ChildWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      width: 170.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWallet,
            width: 35.h,
            margin: EdgeInsets.only(right: 13.h),
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Add a Child",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}
