import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/wallet_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'package:fedaafrica/screens/parent_screens/add_child_screen_one_dialog/add_child_screen_one_dialog.dart';
import 'package:fedaafrica/screens/parent_screens/set_task_screen_dialog/set_task_screen_dialog.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneScreen extends StatelessWidget {
  HomeScreenOneScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  DateTime selectedDatesFromCalendar1 = DateTime.now();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 1.v),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(children: [
                                _buildWallet(context),
                                SizedBox(height: 22.v),
                                SizedBox(
                                    height: 7.v,
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: sliderIndex,
                                        count: 1,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            activeDotColor: Color(0X1212121D),
                                            dotHeight: 7.v))),
                                SizedBox(height: 12.v),
                                _buildView(context),
                                SizedBox(height: 12.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 20.h),
                                        child: Text("Money Skills",
                                            style: CustomTextStyles
                                                .titleLargeNunitoBlack900))),
                                SizedBox(height: 2.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 17.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgClockOnprimary,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              margin:
                                                  EdgeInsets.only(bottom: 3.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("Today",
                                                  style: CustomTextStyles
                                                      .bodyMediumNunitoOnPrimary))
                                        ]))),
                                SizedBox(height: 2.v),
                                _buildTwenty(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 34.h, top: 29.v, bottom: 4.v),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Hello, Afi",
                      style: CustomTextStyles.titleMediumff1e1e1e),
                  TextSpan(
                      text: " 👋🏿",
                      style: CustomTextStyles.titleMediumff18191f)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse424,
              margin: EdgeInsets.fromLTRB(19.h, 4.v, 19.h, 6.v),
              onTap: () {
                onTapCircleImage(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildWallet(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 8.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 167.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return WalletItemWidget(onTapNineteen: () {
                onTapNineteen(context);
              }, onTapEighteen: () {
                onTapEighteen(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 156.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 156.v,
                  width: 342.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12.h),
                      border:
                          Border.all(color: appTheme.black900, width: 1.h)))),
          Align(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    onTapThisWeek(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("This week",
                                    style:
                                        CustomTextStyles.titleLargeGray90002)),
                            SizedBox(height: 42.v),
                            SizedBox(
                                height: 71.v,
                                width: 341.h,
                                child: EasyDateTimeLine(
                                    initialDate: selectedDatesFromCalendar1,
                                    locale: 'en_US',
                                    headerProps: EasyHeaderProps(
                                        // ignore: deprecated_member_use
                                        selectedDateFormat:
                                            SelectedDateFormat.fullDateDMY,
                                        monthPickerType:
                                            MonthPickerType.switcher,
                                        showHeader: false),
                                    dayProps:
                                        EasyDayProps(width: 50.h, height: 71.v),
                                    onDateChange: (selectedDate) {},
                                    itemBuilder: (context, dayNumber, dayName,
                                        monthName, fullDate, isSelected) {
                                      return isSelected
                                          ? Container(
                                              width: 65.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 19.h,
                                                  vertical: 10.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueA20001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.h)),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(dayName.toString(),
                                                        style: CustomTextStyles
                                                            .bodyMediumNunitoOnErrorContainer
                                                            .copyWith(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onErrorContainer)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5.v),
                                                        child: Text(
                                                            dayNumber
                                                                .toString(),
                                                            style: CustomTextStyles
                                                                .titleMediumLato
                                                                .copyWith(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .onErrorContainer)))
                                                  ]))
                                          : Container(
                                              width: 65.h,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 2.h,
                                                  vertical: 10.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray10001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.h)),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(dayName.toString(),
                                                        style: CustomTextStyles
                                                            .bodyMediumNunitoBluegray300
                                                            .copyWith(
                                                                color: appTheme
                                                                    .blueGray300)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.v),
                                                        child: Text(
                                                            dayNumber
                                                                .toString(),
                                                            style: CustomTextStyles
                                                                .titleMediumInterGray90002
                                                                .copyWith(
                                                                    color: appTheme
                                                                        .gray90002)))
                                                  ]));
                                    }))
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 25.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 11.v),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2146,
              height: 197.v,
              width: 309.h,
              radius: BorderRadius.circular(12.h),
              onTap: () {
                onTapImgImage(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenOneScreen;
      case BottomBarEnum.Task:
        return "/";
      case BottomBarEnum.Learn:
        return AppRoutes.parentLearningScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.leaderboardScreenPage:
        return LeaderboardScreenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Displays a dialog with the [AddChildScreenOneDialog] content.
  onTapNineteen(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: AddChildScreenOneDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [SetTaskScreenDialog] content.
  onTapEighteen(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SetTaskScreenDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the activityScreen when the action is triggered.
  onTapThisWeek(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.activityScreen);
  }

  /// Navigates to the parentLearningScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parentLearningScreen);
  }
}
