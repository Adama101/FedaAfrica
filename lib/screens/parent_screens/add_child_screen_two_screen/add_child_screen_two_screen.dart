import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'package:fedaafrica/screens/parent_screens/add_child_screen_one_dialog/add_child_screen_one_dialog.dart';

// ignore_for_file: must_be_immutable
class AddChildScreenTwoScreen extends StatelessWidget {
  AddChildScreenTwoScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 38.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 164.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 19.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFamilyValuesKid,
                                            height: 230.v,
                                            width: 223.h,
                                            alignment: Alignment.centerRight,
                                            margin:
                                                EdgeInsets.only(right: 33.h)),
                                        SizedBox(height: 31.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("Add a Child",
                                                style: CustomTextStyles
                                                    .titleLargeNunitoBlack900)),
                                        SizedBox(height: 50.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, right: 7.h),
                                            child: CustomTextFormField(
                                                controller: userNameController,
                                                hintText: "Username",
                                                textInputAction:
                                                    TextInputAction.done,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 12.h,
                                                        vertical: 17.v))),
                                        SizedBox(height: 21.v),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Date of Birth ",
                                                  style: CustomTextStyles
                                                      .bodyMediumNunitoff000000),
                                              TextSpan(
                                                  text: "(DD/MM/YY)",
                                                  style: CustomTextStyles
                                                      .bodyMediumNunitoffffa542)
                                            ]),
                                            textAlign: TextAlign.left),
                                        SizedBox(height: 2.v),
                                        _buildContentConatiner(context),
                                        SizedBox(height: 41.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 18.h, right: 69.h),
                                            child: Row(children: [
                                              CustomElevatedButton(
                                                  width: 140.h,
                                                  text: "Finish",
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimary,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleSmallInterOnErrorContainer,
                                                  onPressed: () {
                                                    onTapFinish(context);
                                                  }),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtButton(context);
                                                  },
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 62.h,
                                                          top: 13.v,
                                                          bottom: 13.v),
                                                      child: Text("Cancel",
                                                          style: CustomTextStyles
                                                              .titleSmallInterOrangeA20002)))
                                            ]))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildContentConatiner(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h, right: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgCalendarAltBlack900,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 2.v),
              child: Text("08/02/2015",
                  style: CustomTextStyles.bodySmallInterBluegray500))
        ]));
  }

  /// Navigates to the childLoginCodeScreen when the action is triggered.
  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.childLoginCodeScreen);
  }

  /// Displays a dialog with the [AddChildScreenOneDialog] content.
  onTapTxtButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: AddChildScreenOneDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
