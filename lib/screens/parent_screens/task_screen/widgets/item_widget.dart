import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class NinetytwoItemWidget extends StatelessWidget {
  const NinetytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.money,
            color: Colors.blueGrey,
            size: 24.adaptSize,
          ),
          SizedBox(width: 10.h),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Child’s Earning",
                style: CustomTextStyles.titleSmallLatoBluegray100,
              ),
              SizedBox(height: 22.v),
              Text(
                "₦0.00",
                style: CustomTextStyles.headlineSmallLatoOnErrorContainer,
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
