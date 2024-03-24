// ignore_for_file: deprecated_member_use

import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:fedaafrica/screens/parent_screens/home_screen_one_screen/widgets/Add_child_widget.dart';
import 'package:fedaafrica/screens/parent_screens/home_screen_one_screen/widgets/My_kids_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOneScreen extends StatelessWidget {
  HomeScreenOneScreen({Key? key}) : super(key: key);


  DateTime selectedDatesFromCalendar1 = DateTime.now();

  TextEditingController tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 35.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildThisWeek(context),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "My kids",
                      style: CustomTextStyles.titleLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildNinetySeven(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      "Money Skills",
                      style: CustomTextStyles.titleLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Today",
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  _buildNinetyTwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hello, Afi",
                style: CustomTextStyles.titleMediumBlack900,
                
              ),
              TextSpan(
                text: " 👋🏿",
                style: CustomTextStyles.titleMediumBlack900Medium,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse424,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 5.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThisWeek(BuildContext context) {
    return SizedBox(
      height: 330.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 5.h,
                bottom: 20.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, left: 5.0),
                    child: Text(
                      "This week",
                      style: CustomTextStyles.titleLargeGray90002,
                    ),
                  ),
                  SizedBox(height: 42.v),
                  SizedBox(
                    height: 71.v,
                    width: 370.h,
                    child: EasyDateTimeLine(
                      initialDate: selectedDatesFromCalendar1,
                      locale: 'en_US',
                      headerProps: EasyHeaderProps(
                        selectedDateFormat: SelectedDateFormat.fullDateDMY,
                        monthPickerType: MonthPickerType.switcher,
                        showHeader: false,
                      ),
                      dayProps: EasyDayProps(
                        width: 65.h,
                        height: 71.v,
                      ),
                      onDateChange: (selectedDate) {},
                      itemBuilder: (context, dayNumber, dayName, monthName,
                          fullDate, isSelected) {
                        return isSelected
                            ? Container(
                                width: 65.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 19.h,
                                  vertical: 10.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.blueA200,
                                  borderRadius: BorderRadius.circular(
                                    15.h,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      dayName.toString(),
                                      style: CustomTextStyles
                                          .bodyMediumNunitoff000000
                                          .copyWith(
                                        color: appTheme.whiteA700,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.v),
                                      child: Text(
                                        dayNumber.toString(),
                                        style: CustomTextStyles.titleMediumLato
                                            .copyWith(
                                          color: appTheme.whiteA700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(
                                width: 63.h,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Wed",
                                    labelStyle: CustomTextStyles
                                        .titleMediumInterGray90002,
                                    contentPadding: EdgeInsets.fromLTRB(
                                        17.h, 34.v, 17.h, 11.v),
                                  ),
                                  style: CustomTextStyles
                                      .titleMediumInterGray90002,
                                ),
                              );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 162.v,
                  child: ListView.separated(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      right: 5.h,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 26.h,
                      );
                    },
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Add_ChildWidget();
                      
                    },
                  ),
                ),
                SizedBox(height: 12.v),
                Container(
                  height: 156.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.blueA700.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                    border: Border.all(
                      color: appTheme.black900,
                      width: 1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySeven(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 99.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: 1,
          itemBuilder: (context, index) {
            return MyKidsWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 37.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2146,
            height: 350.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
        ],
      ),
    );
  }
}
