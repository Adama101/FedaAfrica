import 'package:fedaafrica/screens/others/account_type/account_type.dart';
import 'package:fedaafrica/screens/parent_screens/info_screen/info_screen.dart';
import 'package:fedaafrica/screens/parent_screens/parent_learning_screen/lesson_one_video.dart';
import 'package:fedaafrica/screens/parent_screens/set_task_dialog_screen/set_task_dialog_screen.dart';
import 'package:fedaafrica/screens/parent_screens/upgrade_screen/upgrade_screen.dart';
import 'package:flutter/material.dart';
import '../screens/child_screens/child_welcome_screen/child_home_screen.dart';
import '../screens/parent_screens/parent_login_screen/parent_login_screen.dart';
import '../screens/others/splash_screen/splash_screen.dart';
import '../screens/others/splash_screen_one_screen/splash_screen_one_screen.dart';
import '../screens/others/splash_screen_two_screen/splash_screen_two_screen.dart';
import '../screens/others/splash_screen_three_screen/splash_screen_three_screen.dart';
import '../screens/others/usertype_screen/usertype_screen.dart';
import '../screens/others/change_password_screen/child_intro_screen/child_intro_screen.dart';
import '../screens/others/set_password_screen/set_password_screen.dart';
import '../screens/others/reset_password_screen/reset_password_screen.dart';
import '../screens/others/terms_conditions_screen/terms_conditions_screen.dart';
import '../screens/parent_screens/home_screen_one_screen/home_screen_one_screen.dart';
import '../screens/parent_screens/add_child_screen_two_screen/add_child_screen_two_screen.dart';
import '../screens/parent_screens/child_login_code_screen/child_login_code_screen.dart';
import '../screens/child_screens/quizz_screen/quizz_screen.dart';
import '../screens/child_screens/child_login_screen/child_login_screen.dart';
import '../screens/child_screens/progress_screen/progress_screen.dart';
import '../screens/child_screens/stages_screen/stages_screen.dart';
import '../screens/child_screens/leaderboard_screen_container_screen/leaderboard_screen_container_screen.dart';
import '../screens/others/task_completed_screen/task_completed_screen.dart';
import '../screens/child_screens/child_profile_screen/child_profile_screen.dart';
import '../screens/child_screens/coin_screen/coin_screen.dart';
import '../screens/parent_screens/activity_screen/activity_screen.dart';
import '../screens/parent_screens/task_screen/task_screen.dart';
import '../screens/parent_screens/parent_learning_screen/parent_learning_screen.dart';
import '../screens/parent_screens/more_screen/more_screen.dart';
import '../screens/parent_screens/view_profile_screen/view_profile_screen.dart';
import '../screens/others/change_password_screen/change_password_screen.dart';
import '../screens/parent_screens/profile_screen/profile_screen.dart';
import '../screens/parent_screens/edit_profile_screen/edit_profile_screen.dart';
import '../screens/parent_screens/language_screen/language_screen.dart';
import '../screens/others/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String parentLoginScreen = '/parent_login_screen';

  static const String splashScreen = '/splash_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String usertypeScreen = '/usertype_screen';

  static const String childIntroScreen = '/child_intro_screen';

  static const String infoScreen = '/info_screen';

  static const String infoFilledScreen = '/info_filled_screen';

  static const String setPasswordScreen = '/set_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String termsConditionsScreen = '/terms_conditions_screen';

  static const String homeScreenOneScreen = '/home_screen_one_screen';

  static const String addChildScreenTwoScreen = '/add_child_screen_two_screen';

  static const String childLoginCodeScreen = '/child_login_code_screen';

  static const String childWelcomeScreen = '/child_welcome_screen';

  static const String quizzScreen = '/quizz_screen';

  static const String childLoginScreen = '/child_login_screen';

  static const String progressScreen = '/progress_screen';

  static const String stagesScreen = '/stages_screen';

  static const String leaderboardScreenContainerScreen =
      '/leaderboard_screen_container_screen';

  static const String leaderboardScreenPage = '/leaderboard_screen_page';

  static const String taskCompletedScreen = '/task_completed_screen';

  static const String childProfileScreen = '/child_profile_screen';

  static const String coinScreen = '/coin_screen';

  static const String activityScreen = '/activity_screen';

  static const String homeScreenTwoScreen = '/home_screen_two_screen';

  static const String taskScreen = '/task_screen';

  static const String parentLearningScreen = '/parent_learning_screen';

  static const String moreScreen = '/more_screen';

  static const String viewProfileScreen = '/view_profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String languageScreen = '/language_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String accountType = '/account_type';

  static const String videoOneScreen = '/video_player';

  static const String videoTwoScreen = '/video_player';

  static const String videoThreeScreen = '/video_player';

  static const String videoFourScreen = '/video_player';

  static const String videoFiveScreen = '/video_player';

  static const String videoSixScreen = '/video_player';

  static const String videoSevenScreen = '/video_player';

  static const String videoEightScreen = '/video_player';

  static const String videoNineScreen = '/video_player';

  static const String videoTenScreen = '/video_player';

  static const String setTaskDialogScreen = '/set_task_dialog_screen.dart';

  static const String upgradeScreen = '/upgrade_screen.dart';

  static const String childHomeScreen = '/child_home_screen.dart';

// All Routes defined
  static Map<String, WidgetBuilder> routes = {
    parentLoginScreen: (context) => ParentLoginScreen(),
    splashScreen: (context) => SplashScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    splashScreenTwoScreen: (context) => SplashScreenTwoScreen(),
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    usertypeScreen: (context) => UsertypeScreen(),
    childIntroScreen: (context) => ChildIntroScreen(),
    infoScreen: (context) => InfoScreen(),
    setPasswordScreen: (context) => SetPasswordScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    termsConditionsScreen: (context) => TermsConditionsScreen(),
    homeScreenOneScreen: (context) => HomeScreenOneScreen(),
    addChildScreenTwoScreen: (context) => AddChildScreenTwoScreen(),
    childLoginCodeScreen: (context) => ChildLoginCodeScreen(),
    quizzScreen: (context) => QuizzScreen(),
    childLoginScreen: (context) => ChildLoginScreen(),
    progressScreen: (context) => ProgressScreen(),
    stagesScreen: (context) => StagesScreen(),
    leaderboardScreenContainerScreen: (context) =>
        LeaderboardScreenContainerScreen(),
    taskCompletedScreen: (context) => TaskCompletedScreen(),
    childProfileScreen: (context) => ChildProfileScreen(),
    coinScreen: (context) => CoinScreen(),
    activityScreen: (context) => ActivityScreen(),
    taskScreen: (context) => TaskScreen(),
    parentLearningScreen: (context) => ParentLearningScreen(),
    moreScreen: (context) => MoreScreen(),
    viewProfileScreen: (context) => ViewProfileScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    languageScreen: (context) => LanguageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    accountType: (context) => AccountType(),
    setTaskDialogScreen: (context) => SetTaskScreenDialogScreen(),
    upgradeScreen: (context) => UpgradeScreen(),
    childHomeScreen: (context) => HomeScreen(),
    videoOneScreen: (context) => VideoOnePlayer(
          videoPath: 'assets/videos/portfolio.mp4',
        ),
    // videoTwoScreen: (context) => VideoTwoPlayer(
    //       videoPath: 'assets/videos/3_ways_for_a_better_financial_life.mp4',
    //     ),
    //   videoThreeScreen: (context) => VideoThreePlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoFourScreen: (context) => VideoFourPlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoFiveScreen: (context) => VideoFivePlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoSixScreen: (context) => VideoSixPlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoSevenScreen: (context) => VideoSevenPlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoEightScreen: (context) => VideoEightPlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoNineScreen: (context) => VideoNinePlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   videoTenScreen: (context) => VideoTenPlayer(
    //         videoPath: 'assets/videos/',
    //       ),
    //   accountType: (context) => AccountType(),
  };
}
