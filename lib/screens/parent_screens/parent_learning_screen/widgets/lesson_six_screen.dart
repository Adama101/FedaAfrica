import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

// ignore: must_be_immutable
class lessonSixScreen extends StatelessWidget {
  const lessonSixScreen({Key? key, required String videoPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the video player screen
        Navigator.pushNamed(context, AppRoutes.videoSixScreen);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  height: 187.v,
                  width: 144.h,
                  decoration: AppDecoration.fillGray90004.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRectangle2034,
                    height: 187.v,
                    width: 144.h,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  top: 2.v,
                  bottom: 28.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 179.h,
                      child: Text(
                        "Budgeting and Financial",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCalendar,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            top: 6.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "10/4/2024 - 10:00 AM",
                            style: CustomTextStyles.bodySmallBluegray400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By ",
                            style: CustomTextStyles.bodySmallff878787,
                          ),
                          TextSpan(
                            text: "Sarah Ajekwe",
                            style: CustomTextStyles.bodySmallff4e65c2,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
