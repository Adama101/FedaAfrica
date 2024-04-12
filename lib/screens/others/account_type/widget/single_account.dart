import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class SingleAccountWidget extends StatelessWidget {
  SingleAccountWidget({
    Key? key,
    this.onTapFrame,
    required Null Function() onTap_singAccFrame,
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
          //Navigator.pushNamed(context, AppRoutes.childIntroScreen);
        },
        child: _SingleAccountWidget(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomImageView(
                    imagePath: ImageConstant.singleImg,
                    height: 60.v,
                    width: 45.h,
                  ),
                ),
                SizedBox(height: 12.v),
                Text(
                  "Single Account",
                  style: CustomTextStyles.titleSmallGray80001,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _SingleAccountWidget({required Widget child}) {
    return GestureDetector(
      onTap: onTapFrame,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}
