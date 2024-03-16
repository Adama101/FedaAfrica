import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/custom_icon_button.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_eight.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: 324.h,
                margin: EdgeInsets.fromLTRB(23.h, 26.v, 26.h, 70.v),
                child: Text(
                    "L15.1 Thank you for visiting our Application Doctor 24×7 and enrolling as a member.\n\r\n15.2 Your privacy is important to us. To better protect your privacy, we are providing this notice explaining our policy with regards to the information you share with us. This privacy policy relates to the information we collect, online from Application, received through the email, by fax or telephone, or in person or in any other way and retain and use for the purpose of providing you services. If you do not agree to the terms in this Policy, we kindly ask you not to use these portals and/or sign the contract document.\n\n15.3 In order to use the services of this Application, You are required to register yourself by verifying the authorised device. This Privacy Policy applies to your information that we collect and receive on and through Doctor 24×7; it does not apply to practices of businesses that we do not own or control or people we do not employ.\n\r\n15.4 By using this Application, you agree to the terms of this Privacy Policy.",
                    maxLines: 25,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumNunitoBluegray900
                        .copyWith(height: 1.71)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: Container(
            height: 42.adaptSize,
            width: 42.adaptSize,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
            child: Stack(alignment: Alignment.center, children: [
              CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  decoration: IconButtonStyleHelper.fillGrayTL211,
                  alignment: Alignment.center,
                  onTap: () {
                    onTapBtnArrowLeft(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgArrowLeft)),
              CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  alignment: Alignment.center)
            ])),
        centerTitle: true,
        title: AppbarSubtitleEight(text: "Terms & Condition"));
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
