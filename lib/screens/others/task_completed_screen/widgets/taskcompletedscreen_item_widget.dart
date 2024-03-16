import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class TaskcompletedscreenItemWidget extends StatelessWidget {
  const TaskcompletedscreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomImageView(
        imagePath: ImageConstant.imgWashYourHands,
        height: 190.v,
        width: 130.h,
      ),
    );
  }
}
