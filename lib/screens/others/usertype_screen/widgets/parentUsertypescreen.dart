import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class parentUsertypescreenItemWidget extends StatelessWidget {
  parentUsertypescreenItemWidget({
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
          // Takes you the Parent Intro Screen 
          Navigator.pushNamed(context, AppRoutes.parentLoginScreen);
        },
        child: _parentUsertypescreen(
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
      ),
    );
  }

  Widget _parentUsertypescreen({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
