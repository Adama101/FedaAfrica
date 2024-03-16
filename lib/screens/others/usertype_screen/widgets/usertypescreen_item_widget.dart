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
          padding: EdgeInsets.symmetric(vertical: 15.v),
          decoration: AppDecoration.outlineBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgHumaaansStanding,
                height: 141.v,
                width: 149.h,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Parent",
                  style: CustomTextStyles.titleSmallGray80001,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
