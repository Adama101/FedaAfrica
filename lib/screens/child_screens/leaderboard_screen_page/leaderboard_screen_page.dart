import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'widgets/leaderboardscreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class LeaderboardScreenPage extends StatelessWidget {
  const LeaderboardScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: _buildLeaderboardscreen(context)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 40.v,
        centerTitle: true,
        title: Row(children: [
          Container(
              height: 17.v,
              width: 24.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 1.v),
              child: Stack(alignment: Alignment.topCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgTicket,
                    height: 17.v,
                    width: 24.h,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 9.h, right: 9.h, bottom: 4.v),
                        child: Text("1",
                            style:
                                CustomTextStyles.bodySmallABeeZeeBlack90010)))
              ])),
          AppbarSubtitleFive(
              text: "Leaderboard", margin: EdgeInsets.only(left: 7.h))
        ]),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse425,
              margin: EdgeInsets.symmetric(horizontal: 21.h))
        ]);
  }

  /// Section Widget
  Widget _buildLeaderboardscreen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 12.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 14.v);
            },
            itemCount: 16,
            itemBuilder: (context, index) {
              return LeaderboardscreenItemWidget(onTapFrame: () {
                onTapFrame(context);
              });
            }));
  }

  /// Navigates to the coinScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.coinScreen);
  }
}
