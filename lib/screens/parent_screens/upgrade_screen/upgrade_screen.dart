import 'package:fedaafrica/core/app_export.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpgradeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, widget) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  alignment: Alignment.topLeft,
                  onTap: () {
                    onTapBtnClock(context);
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgClockGray30001)),
              title: Text('Upgrade to Continue Learning'),
            ),
            body: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMotherHuggingHer,
                    height: 250.v,
                    width: ResponsiveExtension(100).h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: ResponsiveExtension(45).h),
                  ),
                  SizedBox(height: ResponsiveExtension(16).h),
                  Text(
                    'Contact our support on +234 8173723072 for help!',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(height: ResponsiveExtension(32).h),
                  CustomElevatedButton(
                    text: 'Upgrade Now',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the parent screen when the action is triggered.
  onTapBtnClock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parentLearningScreen);
  }
}
