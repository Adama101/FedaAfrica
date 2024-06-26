import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_eight_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_five_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_four_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_nine_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_seven_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_six_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_ten_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_three_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/widgets/lesson_two_screen.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_three.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'widgets/lesson_one_screen.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ParentLearningScreen extends StatelessWidget {
  ParentLearningScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 18.v),
                child: Text(
                  "Latest topics",
                  style: CustomTextStyles.bodyLargeLatoBluegray400,
                ),
              ),
              SizedBox(height: 20.v),
              _buildParentlearningscreen(context),
              _buildParentlearningscreen2(context),
              _buildParentlearningscreen3(context),
              _buildParentlearningscreen4(context),
              _buildParentlearningscreen5(context),
              _buildParentlearningscreen6(context),
              _buildParentlearningscreen7(context),
              _buildParentlearningscreen8(context),
              _buildParentlearningscreen9(context),
              _buildParentlearningscreen10(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 57.h,
      leading: AppbarLeadingIconbuttonThree(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 15.h, top: 7.v, bottom: 7.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(text: "Learn"),
    );
  }

  /// Lesson One Section Widget
  Widget _buildParentlearningscreen(BuildContext context) {
    return lessonOneScreen(
      videoPath: '',
    );
  }

  /// Lesson Two Section Widget
  Widget _buildParentlearningscreen2(BuildContext context) {
    return lessonTwoScreen(
      videoPath: '',
    );
  }

  /// Lesson Three Section Widget
  Widget _buildParentlearningscreen3(BuildContext context) {
    return lessonThreeScreen(
      videoPath: '',
    );
  }

  /// Lesson Four Section Widget
  Widget _buildParentlearningscreen4(BuildContext context) {
    return lessonFourScreen(
      videoPath: '',
    );
  }

  /// Lesson Five Section Widget
  Widget _buildParentlearningscreen5(BuildContext context) {
    return lessonFiveScreen(
      videoPath: '',
    );
  }

  /// Lesson Six Section Widget
  Widget _buildParentlearningscreen6(BuildContext context) {
    return lessonSixScreen(
      videoPath: '',
    );
  }

  /// Lesson Seven Section Widget
  Widget _buildParentlearningscreen7(BuildContext context) {
    return lessonSevenScreen(
      videoPath: '',
    );
  }

  /// Lesson Eight Section Widget
  Widget _buildParentlearningscreen8(BuildContext context) {
    return lessonEightScreen(
      videoPath: '',
    );
  }

  /// Lesson Nine Section Widget
  Widget _buildParentlearningscreen9(BuildContext context) {
    return lessonNineScreen(
      videoPath: '',
    );
  }

  /// Lesson Ten Section Widget
  Widget _buildParentlearningscreen10(BuildContext context) {
    return lessonTenScreen(
      videoPath: '',
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenOneScreen;
      case BottomBarEnum.Task:
        return AppRoutes.taskCompletedScreen;
      case BottomBarEnum.Analytics:
        return "/";
      case BottomBarEnum.Learn:
        return AppRoutes.parentLearningScreen;
      default:
        return AppRoutes.homeScreenOneScreen;
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
    Navigator.popAndPushNamed(context, AppRoutes.homeScreenOneScreen);
  }
}
