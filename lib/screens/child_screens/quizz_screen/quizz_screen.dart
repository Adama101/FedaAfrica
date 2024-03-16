import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'widgets/quizzscreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class QuizzScreen extends StatelessWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 780.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topRight, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 126.v, right: 40.h)),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 117.v, right: 38.h)),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.h, top: 58.v, right: 123.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCloseDeepPurpleA100,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      onTap: () {
                                        onTapImgClose(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.h, bottom: 2.v),
                                      child: Text("Level 1",
                                          style: CustomTextStyles
                                              .titleSmallDeeppurpleA100))
                                ]),
                                SizedBox(height: 10.v),
                                Text("Where’s Money from?",
                                    style:
                                        CustomTextStyles.headlineSmallGray800)
                              ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(top: 19.v, right: 13.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFavorite,
                                    height: 19.v,
                                    width: 24.h,
                                    margin: EdgeInsets.only(bottom: 15.v)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, top: 10.v),
                                    child: Text("15",
                                        style:
                                            CustomTextStyles.titleMediumRed400))
                              ]))),
                  _buildQuizzscreen(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(height: 40.v, actions: [
      AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse425,
          margin: EdgeInsets.symmetric(horizontal: 21.h))
    ]);
  }

  /// Section Widget
  Widget _buildQuizzscreen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(top: 14.v),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 361.v,
                    crossAxisCount: 1,
                    mainAxisSpacing: 1.h,
                    crossAxisSpacing: 1.h),
                physics: BouncingScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return QuizzscreenItemWidget();
                })));
  }

  /// Navigates back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
