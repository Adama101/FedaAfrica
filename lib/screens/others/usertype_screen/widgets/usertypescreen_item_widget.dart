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
          padding: EdgeInsets.symmetric(vertical: 10.v),
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
                imagePath: ImageConstant.child_frame,
                height: 100.v,
                width: 100.h,
              ),
              SizedBox(height: 5.v),
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
