import 'package:fedaafrica/widgets/custom_text_form_field.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SetTaskScreenDialog extends StatelessWidget {
  SetTaskScreenDialog({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: _buildPopupQuickSaving(context));
  }

  /// Section Widget
  Widget _buildPopupQuickSaving(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 334.v),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text("Create a task",
                      style: CustomTextStyles.headlineSmallSemiBold)),
              SizedBox(height: 22.v),
              Text("Task Name",
                  style: CustomTextStyles.bodyMediumRobotoBlack900),
              SizedBox(height: 7.v),
              CustomTextFormField(
                  controller: nameController,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnErrorContainer,
                  filled: true,
                  fillColor: theme.colorScheme.onErrorContainer),
              SizedBox(height: 15.v),
              Text("Reward Amount",
                  style: CustomTextStyles.bodyMediumRobotoBlack900),
              SizedBox(height: 7.v),
              CustomTextFormField(
                  controller: amountController,
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnErrorContainer,
                  filled: true,
                  fillColor: theme.colorScheme.onErrorContainer),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(right: 46.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            width: 140.h,
                            text: "Finish",
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle: CustomTextStyles
                                .titleSmallInterOnErrorContainer,
                            onPressed: () {
                              onTapFinish(context);
                            }),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 13.v),
                            child: Text("Cancel",
                                style: CustomTextStyles.titleSmallInterRed800))
                      ]))
            ]));
  }

  /// Navigates to the taskScreen when the action is triggered.
  onTapFinish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.taskScreen);
  }
}
