import 'package:fedaafrica/widgets/app_bar/custom_app_bar.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_leading_iconbutton_five.dart';
import 'package:fedaafrica/widgets/app_bar/appbar_subtitle_nine.dart';
import 'package:fedaafrica/widgets/custom_search_view.dart';
import 'widgets/languagescreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LanguageScreen extends StatelessWidget {
  LanguageScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController,
                      hintText: "Search Language"),
                  SizedBox(height: 32.v),
                  _buildLanguagescreen(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbuttonFive(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 7.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleNine(text: "Language"));
  }

  /// Section Widget
  Widget _buildLanguagescreen(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.5.v),
              child: SizedBox(
                  width: 335.h,
                  child: Divider(
                      height: 1.v, thickness: 1.v, color: appTheme.gray100)));
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return LanguagescreenItemWidget();
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
