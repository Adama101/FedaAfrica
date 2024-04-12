import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class childUsertypescreenItemWidget extends StatelessWidget {
  childUsertypescreenItemWidget({
    Key? key,
    this.onTapFrame,
    required Null Function() onTap_childFrame,
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
          // Takes you the Child Intro Screen 
          Navigator.pushNamed(context, AppRoutes.childIntroScreen);
        },
        child: _childUsertypescreen(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.pink.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20.v),
                CustomImageView(
                  imagePath: ImageConstant.child_frame,
                  height: 100.v,
                  width: 80.h,
                ),
                SizedBox(height: 12.v),
                Text(
                  "Child",
                  style: CustomTextStyles.titleSmallGray80001,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _childUsertypescreen({required Widget child}) {
    return GestureDetector(
      onTap: onTapFrame,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 253, 254, 255),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}
