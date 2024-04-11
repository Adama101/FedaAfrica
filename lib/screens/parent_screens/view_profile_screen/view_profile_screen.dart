import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_four.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ViewProfileScreen extends StatelessWidget {
  ViewProfileScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController monthController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 8.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: 108.v,
                                          width: 107.h,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text("Afi Ohua",
                                                        style: CustomTextStyles
                                                            .titleMediumPoppinsGray90001)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse42483x80,
                                                    height: 83.v,
                                                    width: 50.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                            41.h),
                                                    alignment:
                                                        Alignment.topCenter),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCameraIcon1,
                                                    height: 17.v,
                                                    width: 15.h,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    margin: EdgeInsets.only(
                                                        bottom: 25.v))
                                              ]))),
                                  SizedBox(height: 59.v),
                                  Text("Full Name",
                                      style:
                                          CustomTextStyles.bodyMediumGray500),
                                  SizedBox(height: 15.v),
                                  _buildFullName(context),
                                  SizedBox(height: 18.v),
                                  Text("Email Address",
                                      style:
                                          CustomTextStyles.bodyMediumGray500),
                                  SizedBox(height: 15.v),
                                  _buildEmail(context),
                                  SizedBox(height: 18.v),
                                  Text("Phone Number",
                                      style:
                                          CustomTextStyles.bodyMediumGray500),
                                  SizedBox(height: 15.v),
                                  _buildPhoneNumber(context),
                                  SizedBox(height: 18.v),
                                  Text("Birth Date",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray40002),
                                  SizedBox(height: 13.v),
                                  _buildDate1(context),
                                  SizedBox(height: 78.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Joined",
                                                style: CustomTextStyles
                                                    .bodySmallffa2a2a7),
                                            TextSpan(
                                                text: " 28",
                                                style: CustomTextStyles
                                                    .bodyMediumff7e848d),
                                            TextSpan(
                                                text: " Jan 2021",
                                                style: CustomTextStyles
                                                    .bodyMediumff7e848d13)
                                          ]),
                                          textAlign: TextAlign.left))
                                ]))))),
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
        title: AppbarSubtitleTwo(text: "Edit Profile"));
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
        controller: fullNameController,
        hintText: "Mrs Afi XX",
        hintStyle: theme.textTheme.bodyMedium!,
        prefix: Container(
            margin: EdgeInsets.only(right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 1.v),
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "afiMyroniuk@gmail.com",
        hintStyle: CustomTextStyles.bodyMediumPoppins,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.only(right: 16.h, bottom: 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmailsEmailmailletter,
                height: 22.adaptSize,
                width: 22.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 33.v),
        contentPadding: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 1.v),
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
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
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return CustomTextFormField(
        width: 82.h,
        controller: dateController,
        hintText: "28",
        hintStyle: theme.textTheme.bodyMedium!,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h),
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildMonth(BuildContext context) {
    return CustomTextFormField(
        width: 82.h,
        controller: monthController,
        hintText: "September",
        hintStyle: theme.textTheme.bodyMedium!,
        contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
  }

  /// Section Widget
  Widget _buildZipcode(BuildContext context) {
    return CustomTextFormField(
        width: 82.h,
        controller: zipcodeController,
        hintText: "1980",
        hintStyle: theme.textTheme.bodyMedium!,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 23.h),
        borderDecoration: TextFormFieldStyleHelper.underLineGray);
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
      case AppRoutes.viewProfileScreen:
        return ViewProfileScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.profileScreen);
  }
}
