import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class CoinScreen extends StatelessWidget {
  const CoinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 35.v),
                child: Column(children: [
                  _buildView(context),
                  SizedBox(
                      width: 259.h,
                      child: Text("You earned Legendary on this level!",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.headlineSmallOnErrorContainer)),
                  SizedBox(height: 6.v),
                  Container(
                      width: 305.h,
                      margin: EdgeInsets.only(left: 35.h, right: 34.h),
                      child: Text(
                          "Congratulations! You’ve proven your skills and unlocked a special color",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumSemiBold)),
                  Spacer(),
                  SizedBox(height: 29.v),
                  CustomElevatedButton(
                      text: "GOT IT!",
                      margin: EdgeInsets.symmetric(horizontal: 20.h),
                      buttonStyle: CustomButtonStyles.outlineOrangeA,
                      buttonTextStyle: CustomTextStyles.titleMediumLime80001,
                      onPressed: () {
                        onTapGOTIT(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 413.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 400.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 400.v,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(200.h),
                                            gradient: LinearGradient(
                                                begin: Alignment(0.46, 0.4),
                                                end: Alignment(0.31, 0.94),
                                                colors: [
                                                  appTheme.gray900,
                                                  appTheme.gray90000
                                                ])))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle61,
                                    height: 156.v,
                                    width: 154.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                        right: 22.h, bottom: 35.v))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle64,
                      height: 157.v,
                      width: 153.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 20.h, bottom: 38.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle63,
                      height: 63.v,
                      width: 162.h,
                      alignment: Alignment.centerRight),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle65,
                      height: 156.v,
                      width: 154.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 25.h, top: 36.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle62,
                      height: 155.adaptSize,
                      width: 155.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 41.v, right: 20.h)),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle61161x59,
                      height: 161.v,
                      width: 59.h,
                      alignment: Alignment.topCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgLayer1,
                      height: 161.v,
                      width: 149.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 92.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle66,
                      height: 59.v,
                      width: 161.h,
                      alignment: Alignment.centerLeft)
                ]))));
  }

  /// Navigates to the taskCompletedScreen when the action is triggered.
  onTapGOTIT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.taskCompletedScreen);
  }
}
