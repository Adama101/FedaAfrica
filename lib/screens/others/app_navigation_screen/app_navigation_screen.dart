import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "parent_login_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.parentLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash_screen_One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash_screen_Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash_screen_Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "usertype_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.usertypeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "child_intro_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.childIntroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "info_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.infoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "info_filled_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.infoFilledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "set_password_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.setPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "reset_password_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "terms_conditions_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.termsConditionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home_screen_One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add_child_screen_Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addChildScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "child_login_code_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.childLoginCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "child_welcome_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.childWelcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "quizz_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.quizzScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "child_login_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.childLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "progress_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.progressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "stages_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.stagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "leaderboard_screen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.leaderboardScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "task_completed_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.taskCompletedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "child_profile_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.childProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "coin_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.coinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "activity_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.activityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "task_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.taskScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "parent_learning_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.parentLearningScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "more_screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.moreScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "view_profile_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.viewProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "change_password_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit_profile_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "language_screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.languageScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
