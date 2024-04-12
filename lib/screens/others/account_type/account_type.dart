import 'package:fedaafrica/screens/others/account_type/widget/family_account.dart';
import 'package:fedaafrica/screens/others/account_type/widget/single_account.dart';
import 'package:flutter/material.dart';
import 'package:fedaafrica/core/app_export.dart';

class AccountType extends StatelessWidget {
  const AccountType({Key? key}) : super(key: key);

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
                  "Choose an Account Type!",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 9.h),
                child: Text(
                  "Create a Family or a Single Account",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 89.v),
              Row(
                children: [
                  Expanded(
                    child: _FamilyAccountWidget(context),
                  ),
                  SizedBox(width: 29.h),
                  Expanded(
                    child: _SingleAccountWidget(context),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _FamilyAccountWidget(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 29.h);
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return FamilyAccountWidget(
            onTapFrame: () {},
          );
        },
      ),
    );
  }

  Widget _SingleAccountWidget(BuildContext context) {
    return SizedBox(
      height: 250.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 29.h);
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return SingleAccountWidget(
            onTap_singAccFrame: () {},
          );
        },
      ),
    );
  }
}
