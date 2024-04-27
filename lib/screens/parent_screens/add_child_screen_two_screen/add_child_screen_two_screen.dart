import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'package:intl/intl.dart';

// ignore_for_file: must_be_immutable
class AddChildScreenTwoScreen extends StatefulWidget {
  AddChildScreenTwoScreen({Key? key}) : super(key: key);

  @override
  State<AddChildScreenTwoScreen> createState() =>
      _AddChildScreenTwoScreenState();
}

class _AddChildScreenTwoScreenState extends State<AddChildScreenTwoScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

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
                                            height: 250.v,
                                            width: 200.h,
                                            alignment: Alignment.center,
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
                                                    Navigator.pushNamed(
                                                        context,
                                                        AppRoutes
                                                            .homeScreenOneScreen);
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
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
            imagePath: ImageConstant.imgCalendarAltBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.centerLeft,
          ),
          Flexible(
            // I need to Disable the Text input field, Just the date picker is fine will be fine
            child: CustomTextFormField(
              width: 329.h,
              controller: dateOfBirthController,
              hintStyle: CustomTextStyles.bodyMediumNunitoBluegray500,
              alignment: Alignment.centerRight,
            ),
          )
        ]),
      ),
    );
  }

  /// Method to show the date picker and update the date field
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        dateOfBirthController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  /// Navigates to the childLoginCodeScreen when the action is triggered.
  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.childLoginCodeScreen);
  }
}
