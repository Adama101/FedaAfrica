import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class FamilyAccountWidget extends StatelessWidget {
  FamilyAccountWidget({
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
          Navigator.pushNamed(context, AppRoutes.usertypeScreen);
        },
        child: _FamilyAccountWidget(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFamily,
                    height: 90.v,
                    width: 60.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "Family Account",
                  style: CustomTextStyles.titleSmallGray80001,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _FamilyAccountWidget({required Widget child}) {
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
