import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class childUsertypescreenItemWidget extends StatelessWidget {
  childUsertypescreenItemWidget({
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