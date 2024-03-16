import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class ChildwelcomescreenItemWidget extends StatelessWidget {
  const ChildwelcomescreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgCashAndCoins,
      height: 239.v,
      width: 195.h,
    );
  }
}
