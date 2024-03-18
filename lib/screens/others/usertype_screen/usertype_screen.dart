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
        body: Row(
          children: [
            Expanded(
              child: _parentUsertypescreen(context),
            ),
            Expanded(
              child: _childUsertypescreen(context),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            AppbarSubtitle(text: "Choose a Profile!"),
            AppbarSubtitleTen(
              text: "Are you a parent / child",
              margin: EdgeInsets.only(right: 30.h),
            ),
          ],
        ),
      ),
    );
  }

  Widget _parentUsertypescreen(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 29.h);
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return UsertypescreenItemWidget(
            onTapFrame: () {
              onTapFrame(context, isParent: true);
            },
          );
        },
      ),
    );
  }

  Widget _childUsertypescreen(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 29.h);
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return UsertypescreenItemWidget(
            onTapFrame: () {
              onTapFrame(context, isParent: false);
            },
          );
        },
      ),
    );
  }

  // Navigate to either the Parent or Child Screens
  void onTapFrame(BuildContext context, {required bool isParent}) {
    if (isParent) {
      Navigator.pushNamed(context, AppRoutes.parentLoginScreen);
    } else {
      Navigator.pushNamed(context, AppRoutes.childIntroScreen);
    }
  }
}