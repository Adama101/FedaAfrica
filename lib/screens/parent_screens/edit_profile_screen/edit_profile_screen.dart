import 'package:fedaafrica/screens/child_screens/leaderboard_screen_page/leaderboard_screen_page.dart';
import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_four.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_drop_down.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController monthController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController passwordController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 38.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 5.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.h),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 108.v,
                                        width: 93.h,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text("Afi Ohua",
                                                      style: CustomTextStyles
                                                          .titleMediumPoppinsGray90001)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse42483x80,
                                                  height: 83.v,
                                                  width: 80.h,
                                                  radius: BorderRadius.circular(
                                                      41.h),
                                                  alignment: Alignment.topRight)
                                            ])),
                                    SizedBox(height: 25.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Full ",
                                                  style: CustomTextStyles
                                                      .bodyMediumPoppinsffa2a2a7),
                                              TextSpan(
                                                  text: "Name",
                                                  style: CustomTextStyles
                                                      .bodyMediumffa2a2a7)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    SizedBox(height: 12.v),
                                    _buildFullName(context),
                                    SizedBox(height: 16.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Email Address",
                                            style: CustomTextStyles
                                                .bodyMediumPoppinsGray500)),
                                    SizedBox(height: 13.v),
                                    _buildEmail(context),
                                    SizedBox(height: 18.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Phone Number",
                                            style: CustomTextStyles
                                                .bodyMediumGray500)),
                                    SizedBox(height: 15.v),
                                    _buildPhoneNumber(context),
                                    SizedBox(height: 18.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Birth Date",
                                            style: CustomTextStyles
                                                .bodyMediumBluegray40002)),
                                    SizedBox(height: 13.v),
                                    _buildDate1(context),
                                    SizedBox(height: 24.v),
                                    _buildPassword1(context),
                                    SizedBox(height: 26.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 22.h, right: 66.h),
                                            child: Row(children: [
                                              _buildSave(context),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtButton(context);
                                                  },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 65.h,
                                                          top: 13.v,
                                                          bottom: 13.v),
                                                      child: Text("Cancel",
                                                          style: CustomTextStyles
                                                              .titleSmallLatoRed800)))
                                            ])))
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbuttonFour(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Personal Information"));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "Mrs Afi XX",
        hintStyle: CustomTextStyles.bodyMediumPoppins,
        prefix: Container(
            margin: EdgeInsets.only(top: 1.v, right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(right: 30.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "afiohua@gmail.com",
        hintStyle: theme.textTheme.bodyMedium!,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.only(right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmailsEmailmailletter,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(top: 2.v, right: 30.h, bottom: 2.v),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
        controller: phoneNumberController,
        hintText: "+2331712663389",
        hintStyle: theme.textTheme.bodyMedium!,
        prefix: Container(
            margin: EdgeInsets.only(right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPhonesPhoneCall,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 1.v),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return CustomTextFormField(
        width: 82.h,
        controller: dateController,
        hintText: "28",
        hintStyle: theme.textTheme.bodyMedium!,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildMonth(BuildContext context) {
    return CustomTextFormField(
        width: 82.h,
        controller: monthController,
        hintText: "September",
        hintStyle: theme.textTheme.bodyMedium!,
        contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return CustomTextFormField(
        width: 82.h,
        controller: zipcodeController,
        hintText: "1980",
        hintStyle: theme.textTheme.bodyMedium!,
        contentPadding: EdgeInsets.symmetric(horizontal: 23.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildDate1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildDate(context),
      _buildMonth(context),
      _buildZipcode(context)
    ]);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "***************",
        hintStyle: CustomTextStyles.bodyMediumPoppins,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray);
  }

  /// Section Widget
  Widget _buildExpirydate(BuildContext context) {
    return CustomTextFormField(
        controller: expirydateController,
        hintText: "12/09/2028",
        hintStyle: CustomTextStyles.bodyMediumPoppins,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.only(top: 1.v, right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPhonesPhoneCallGray600,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(right: 30.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlueGray1);
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return SizedBox(
        height: 335.adaptSize,
        width: 335.adaptSize,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 7.h, top: 24.v),
                  child: Text("Passport", style: theme.textTheme.bodyMedium))),
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomDropDown(
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 24.v, 30.h, 23.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowleftGray90001,
                                height: 15.v,
                                width: 17.h)),
                        hintText: "Identification type",
                        items: dropdownItemList),
                    SizedBox(height: 18.v),
                    Text("Identification Details",
                        style: CustomTextStyles.bodyMediumGray500),
                    SizedBox(height: 15.v),
                    _buildPassword(context),
                    SizedBox(height: 19.v),
                    Text("Expiry Date",
                        style: CustomTextStyles.bodyMediumGray600),
                    SizedBox(height: 13.v),
                    _buildExpirydate(context),
                    SizedBox(height: 18.v),
                    Text("ID Scan",
                        style: CustomTextStyles.bodyMediumBluegray40002)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgCameraIcon1,
              height: 21.v,
              width: 30.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 8.h, bottom: 30.v)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 71.v,
                  width: 133.h,
                  margin: EdgeInsets.only(left: 71.h),
                  decoration: BoxDecoration(
                      color: appTheme.gray30003,
                      borderRadius: BorderRadius.circular(10.h))))
        ]));
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        width: 140.h,
        text: "Save",
        buttonStyle: CustomButtonStyles.fillPrimaryTL22,
        buttonTextStyle: CustomTextStyles.titleSmallLatoOnErrorContainer,
        onPressed: () {
          onTapSave(context);
        });
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

  /// Navigates to the profileScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTxtButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
