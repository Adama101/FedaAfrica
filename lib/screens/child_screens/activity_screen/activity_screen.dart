import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_title.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:fedaafrica/widgets/custom_floating_text_field.dart';
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

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 71.v,
              width: 374.h,
              child: EasyDateTimeLine(
                  initialDate: selectedDatesFromCalendar1,
                  locale: 'en_US',
                  headerProps: EasyHeaderProps(
                      // ignore: deprecated_member_use
                      selectedDateFormat: SelectedDateFormat.fullDateDMY,
                      monthPickerType: MonthPickerType.switcher,
                      showHeader: false),
                  dayProps: EasyDayProps(width: 65.h, height: 71.v),
                  onDateChange: (selectedDate) {},
                  itemBuilder: (context, dayNumber, dayName, monthName,
                      fullDate, isSelected) {
                    return isSelected
                        ? Container(
                            width: 65.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 10.v),
                            decoration: BoxDecoration(
                                color: appTheme.lightBlue400,
                                borderRadius: BorderRadius.circular(15.h)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(dayName.toString(),
                                      style: CustomTextStyles
                                          .bodyMediumNunitoOnErrorContainer
                                          .copyWith(
                                              color: theme.colorScheme
                                                  .onErrorContainer)),
                                  Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text(dayNumber.toString(),
                                          style: CustomTextStyles
                                              .titleMediumLato
                                              .copyWith(
                                                  color: theme.colorScheme
                                                      .onErrorContainer)))
                                ]))
                        : SizedBox(
                            width: 67.h,
                            child: TextFormField(
                                focusNode: FocusNode(),
                                autofocus: true,
                                controller: tfController,
                                decoration: InputDecoration(
                                    labelText: "Wed",
                                    labelStyle: CustomTextStyles
                                        .titleMediumInterGray90002,
                                    hintText: "Wed",
                                    hintStyle: CustomTextStyles
                                        .titleMediumInterGray90002,
                                    filled: true,
                                    fillColor: appTheme.gray10001,
                                    isDense: true,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        19.h, 34.v, 19.h, 11.v)),
                                style: CustomTextStyles
                                    .titleMediumInterGray90002));
                  })),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: CustomFloatingTextField(
                  width: 65.h,
                  controller: oneController,
                  labelText: "Thu",
                  labelStyle: CustomTextStyles.titleMediumInterGray90002,
                  hintText: "Thu",
                  textInputAction: TextInputAction.done)),
          Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 12.v),
              decoration: AppDecoration.fillGray10001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text("Fri",
                    style: CustomTextStyles.bodyMediumNunitoBluegray300),
                SizedBox(height: 5.v),
                Text("01", style: CustomTextStyles.titleMediumInterGray90002)
              ]))
        ])));
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
        return AppRoutes.leaderboardScreenPage;
      case BottomBarEnum.Task:
        return "/";
      case BottomBarEnum.Analytics:
        return "/";
      case BottomBarEnum.Learn:
        return "/";
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
