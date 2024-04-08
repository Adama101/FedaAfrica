import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/lesson_one_video.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_title.dart';
import 'package:intl/intl.dart';
import 'widgets/activityscreen_item_widget.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ActivityScreen extends StatelessWidget {
  ActivityScreen({Key? key}) : super(key: key);

  DateTime selectedDatesFromCalendar1 = DateTime.now();

  TextEditingController tfController = TextEditingController();

  TextEditingController oneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: 430.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 10.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 22.h),
                                            child: Text("This week",
                                                style: CustomTextStyles
                                                    .titleLargeGray90002)),
                                        SizedBox(height: 37.v),
                                        _buildOne(context),
                                        SizedBox(height: 95.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle10,
                                            height: 181.v,
                                            width: 404.h,
                                            margin: EdgeInsets.only(left: 1.h)),
                                        SizedBox(height: 9.v),
                                        _buildTime(context),
                                        SizedBox(height: 14.v),
                                        _buildActivityscreen(context)
                                      ]))))
                    ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 19.h, right: 36.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 17.h, top: 9.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Praise Ohua"));
  }

  }
  
Widget _buildOne(BuildContext context) {
  // Get the current date
  DateTime currentDate = DateTime.now();

  // Calculate the start date of the week (assuming Monday is the start of the week)
  DateTime startDate = currentDate.subtract(Duration(days: currentDate.weekday - 1));

  // Generate a list of dates for the current week
  List<DateTime> weekDates = [];
  for (int i = 0; i < 7; i++) {
    weekDates.add(startDate.add(Duration(days: i)));
  }

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 20.h),
    child: IntrinsicWidth(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: weekDates.map((date) {
          bool isSelected = date.day == currentDate.day;
          String dayOfWeek = DateFormat('EEE').format(date);
          String dayOfMonth = date.day.toString();
          return GestureDetector(
            onTap: () {
              // Handle date tile tap
            },
            child: Container(
              height: 71.v,
              width: 65.h,
              decoration: BoxDecoration(
                color: isSelected ? appTheme.lightBlue400 : appTheme.gray10001,
                borderRadius: BorderRadius.circular(15.h),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isSelected ? 'Today' : dayOfWeek,
                    style: isSelected
                        ? CustomTextStyles.bodyMediumNunitoOnErrorContainer
                        : CustomTextStyles.titleMediumInterGray90002,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      dayOfMonth,
                      style: isSelected
                          ? CustomTextStyles.titleMediumLato.copyWith(
                              color: theme.colorScheme.onErrorContainer)
                          : CustomTextStyles.titleMediumInterGray90002,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    ),
  );
}

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 68.h),
        child: Row(children: [
          Text("8AM", style: CustomTextStyles.bodyMediumNunitoGray40001),
          Spacer(flex: 31),
          Text("10AM", style: CustomTextStyles.bodyMediumNunitoGray40001),
          Spacer(flex: 17),
          Text("12AM", style: CustomTextStyles.bodyMediumNunitoGray40001),
          Spacer(flex: 24),
          Text("2PM", style: CustomTextStyles.bodyMediumNunitoGray40001),
          Spacer(flex: 26),
          Text("4PM", style: CustomTextStyles.bodyMediumNunitoGray40001)
        ]));
  }

  /// Section Widget
  Widget _buildActivityscreen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 21.h, right: 44.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 4.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ActivityscreenItemWidget();
            }));
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
        return AppRoutes.taskScreen;
      case BottomBarEnum.Analytics:
        return AppRoutes.activityScreen;
      case BottomBarEnum.Learn:
        return AppRoutes.parentLearningScreen;
      default:
        return AppRoutes.homeScreenOneScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.activityScreen:
        return ActivityScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.homeScreenOneScreen);
  }

