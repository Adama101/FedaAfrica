import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_ten.dart';
import 'widgets/usertypescreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class UsertypeScreen extends StatelessWidget {
  const UsertypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 43.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Spacer(flex: 33),
                  _buildUsertypescreen(context),
                  Spacer(flex: 66)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 33.h),
            child: Column(children: [
              AppbarSubtitle(text: "Choose a Profile!"),
              AppbarSubtitleTen(
                  text: "Are you a parent / child",
                  margin: EdgeInsets.only(right: 22.h))
            ])));
  }

  /// Section Widget
  Widget _buildUsertypescreen(BuildContext context) {
    return SizedBox(
        height: 210.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 29.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UsertypescreenItemWidget(onTapFrame: () {
                onTapFrame(context);
              });
            }));
  }

  /// Navigates to the parentLoginScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parentLoginScreen);
  }
}
