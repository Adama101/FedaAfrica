import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class StagesScreen extends StatelessWidget {
  const StagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Container(
                        height: 769.v,
                        width: 334.h,
                        margin: EdgeInsets.only(
                            left: 20.h, right: 20.h, bottom: 23.v),
                        child: Stack(alignment: Alignment.topRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 166.v, right: 19.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 157.v, right: 17.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse425,
                              height: 40.v,
                              width: 45.h,
                              radius: BorderRadius.circular(22.h),
                              alignment: Alignment.topRight),
                          CustomImageView(
                              imagePath: ImageConstant.imgLockIcon,
                              height: 82.v,
                              width: 181.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 328.v, right: 22.h)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 41.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 229.v,
                                            width: 268.h,
                                            margin: EdgeInsets.only(left: 6.h),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapView(context);
                                                          },
                                                          child: Container(
                                                              height: 101.v,
                                                              width: 94.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          43.h),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                89.v,
                                                                            width: 92.h,
                                                                            decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(46.h)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: SizedBox(
                                                                            height: 89.v,
                                                                            width: 92.h,
                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                              Align(alignment: Alignment.center, child: Container(height: 89.v, width: 92.h, decoration: BoxDecoration(color: appTheme.blue300, borderRadius: BorderRadius.circular(46.h)))),
                                                                              CustomImageView(imagePath: ImageConstant.imgBlueStarOutline, height: 53.v, width: 46.h, alignment: Alignment.center)
                                                                            ])))
                                                                  ])))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height: 102.v,
                                                          width: 83.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 49.h),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height: 91
                                                                            .v,
                                                                        width: 83
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.gray60001,
                                                                            borderRadius: BorderRadius.circular(45.h)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Container(
                                                                        height: 91
                                                                            .v,
                                                                        width: 83
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray40002,
                                                                            borderRadius: BorderRadius.circular(45.h))))
                                                              ]))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLockIcon,
                                                      height: 82.v,
                                                      width: 181.h,
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      margin: EdgeInsets.only(
                                                          bottom: 20.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgHttpsLottief120x106,
                                                      height: 120.v,
                                                      width: 106.h,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          bottom: 9.v))
                                                ])),
                                        SizedBox(height: 49.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 31.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                      height: 120.v,
                                                      width: 132.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Container(
                                                                    width:
                                                                        120.h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 17
                                                                            .v),
                                                                    child: Text(
                                                                        "Create a \nSavings Goal ",
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleLarge))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgHttpsLottief120x106,
                                                                height: 120.v,
                                                                width: 106.h,
                                                                alignment: Alignment
                                                                    .centerLeft)
                                                          ])),
                                                  Container(
                                                      height: 104.v,
                                                      width: 83.h,
                                                      margin: EdgeInsets.only(
                                                          top: 15.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    height:
                                                                        91.v,
                                                                    width: 83.h,
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .gray60001,
                                                                        borderRadius:
                                                                            BorderRadius.circular(45.h)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Container(
                                                                    height:
                                                                        91.v,
                                                                    width: 83.h,
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .blueGray40002,
                                                                        borderRadius:
                                                                            BorderRadius.circular(45.h))))
                                                          ]))
                                                ])),
                                        SizedBox(height: 48.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                height: 120.v,
                                                width: 270.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height: 91.v,
                                                              width: 83.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          50.h),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .gray60001,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              45.h)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height: 91.v,
                                                              width: 83.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          50.h,
                                                                      top: 3.v),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .blueGray40002,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              45.h)))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgLockIcon,
                                                          height: 82.v,
                                                          width: 181.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 8.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgHttpsLottief120x106,
                                                          height: 120.v,
                                                          width: 106.h,
                                                          alignment: Alignment
                                                              .centerRight)
                                                    ]))),
                                        SizedBox(height: 53.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgHttpsLottief120x106,
                                                  height: 120.v,
                                                  width: 106.h),
                                              Container(
                                                  height: 101.v,
                                                  width: 181.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 18.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                                height: 91.v,
                                                                width: 83.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 45
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .gray60001,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            45.h)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                height: 91.v,
                                                                width: 83.h,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .blueGray40002,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            45.h)))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgLockIcon,
                                                            height: 82.v,
                                                            width: 181.h,
                                                            alignment: Alignment
                                                                .topCenter)
                                                      ]))
                                            ])
                                      ])))
                        ]))))));
  }

  /// Navigates to the leaderboardScreenContainerScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.leaderboardScreenContainerScreen);
  }
}
