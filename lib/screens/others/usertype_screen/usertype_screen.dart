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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 15.h, top: 83.v, right: 15.h),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Choose a Profile!",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Are you a parent / child",
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 89.v),
                      _buildUsertypescreen(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildUsertypescreen(BuildContext context) {
    return SizedBox(
        height: 210.v,
        child: ListView.separated(
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
