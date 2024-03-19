import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';
import 'package:fedaafrica/screens/others/usertype_screen/widgets/childUsertypescreen.dart';
import 'package:fedaafrica/screens/others/usertype_screen/widgets/parentUsertypescreen.dart';

class UsertypeScreen extends StatelessWidget {
  const UsertypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 15.h, top: 83.v, right: 15.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  "Choose a Profile!",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  "Are you a parent / child",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 89.v),
              Row(
                children: [
                  Expanded(
                    child: _parentUsertypescreen(context),
                  ),
                  SizedBox(width: 29.h),
                  Expanded(
                    child: _childUsertypescreen(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _parentUsertypescreen(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 29.h);
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return parentUsertypescreenItemWidget(
            onTapFrame: () {
              _onTapFrame(context);
            },
          );
        },
      ),
    );
  }

  Widget _childUsertypescreen(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 29.h);
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return childUsertypescreenItemWidget(
            onTapFrame: () {
              _onTapFrame(context);
            },
          );
        },
      ),
    );
  }

  void _onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parentLoginScreen);
  }
}