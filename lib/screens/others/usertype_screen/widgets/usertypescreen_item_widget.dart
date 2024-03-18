import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class UsertypescreenItemWidget extends StatelessWidget {
  UsertypescreenItemWidget({
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 158.h,
      child: GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.v),
              CustomImageView(
                imagePath: ImageConstant.imgHumaaansStanding,
                height: 90.v,
                width: 60.h,
              ),
              SizedBox(height: 12.v),
              Text(
                "Parent",
                style: CustomTextStyles.titleSmallGray80001,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
