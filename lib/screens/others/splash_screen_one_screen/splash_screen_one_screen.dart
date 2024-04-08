import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fedaafrica/widgets/custom_elevated_button.dart';
import 'package:fedaafrica/widgets/custom_outlined_button.dart';
import 'package:fedaafrica/core/app_export.dart';

class SplashScreenOneScreen extends StatelessWidget {
  const SplashScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildWalletWidget(context),
              SizedBox(height: 30),
              SizedBox(
                height: 8,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 12,
                    activeDotColor: Theme.of(context).colorScheme.primary,
                    dotColor: appTheme.gray40001,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ),
              SizedBox(height: 17),
              Text(
                "Bit Sized Learning",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 5),
              Container(
                width: 310,
                margin: EdgeInsets.only(left: 35, right: 28),
                child: Text(
                  "professionally verified educational modules deliver information in a clear and compelling way. Organized into actionable skills, our one of a kind curriculum tests users on the spot, so they can feel confident in their newfound knowledge",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumNunitoBlack900_1.copyWith(height: 1.50),
                ),
              ),
              SizedBox(height: 25),
              CustomElevatedButton(
                text: "Next",
                margin: EdgeInsets.only(left: 26, right: 14),
                onPressed: () {
                  onTapNext(context);
                },
              ),
              SizedBox(height: 20),
              CustomOutlinedButton(
                text: "Skip",
                margin: EdgeInsets.only(left: 26, right: 14),
                onPressed: () {
                  onTapSkip(context);
                },
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  /// Image Widget
  Widget _buildWalletWidget(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          CustomImageView(
            imagePath: ImageConstant.wallet_Img, 
            height: 120,
            width: 110,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Navigates to the splashScreenTwoScreen when the action is triggered.
  void onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.splashScreenTwoScreen);
  }

  /// Navigates to the usertypeScreen when the action is triggered.
  void onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountType);
  }
}