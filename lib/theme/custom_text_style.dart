import 'package:flutter/material.dart';
import 'package:fedaafrica/core/utils/size_utils.dart';
import 'package:fedaafrica/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray90003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeLatoBluegray400 =>
      theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get bodyLargeLatoGray90003 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLargeff000000 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF000000),
        fontSize: 18.fSize,
      );
  static get bodyMediumABeeZeeBlack900 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumABeeZeeBlack90015 =>
      theme.textTheme.bodyMedium!.aBeeZee.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumGray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40002,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumInterOrange400 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.orange400,
      );
  static get bodyMediumInterOrangeA20001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.orangeA20001,
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoBlack900 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoBlack90015 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.black900.withOpacity(0.98),
        fontSize: 15.fSize,
      );
  static get bodyMediumNunitoBlack900_1 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumNunitoBluegray300 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.blueGray300,
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoBluegray500 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.blueGray500,
        fontSize: 15.fSize,
      );
  static get bodyMediumNunitoBluegray900 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumNunitoGray40001 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.gray40001,
      );
  static get bodyMediumNunitoGray500 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumNunitoGray90004 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: appTheme.gray90004,
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoOnErrorContainer =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoOnPrimary =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumNunitoOnPrimary13 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoff000000 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: Color(0XFF000000),
      );
  static get bodyMediumNunitoff00000013 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: Color(0XFF000000),
        fontSize: 13.fSize,
      );
  static get bodyMediumNunitoff999999 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: Color(0XFF999999),
      );
  static get bodyMediumNunitoffef2828 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: Color(0XFFEF2828),
      );
  static get bodyMediumNunitofffd9b2f =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: Color(0XFFFD9B2F),
      );
  static get bodyMediumNunitoffffa542 =>
      theme.textTheme.bodyMedium!.nunito.copyWith(
        color: Color(0XFFFFA542),
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppinsBluegray40002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 13.fSize,
      );
  static get bodyMediumPoppinsGray500 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumPoppinsffa2a2a7 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFFA2A2A7),
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumff7e848d => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF7E848D),
      );
  static get bodyMediumff7e848d13 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF7E848D),
        fontSize: 13.fSize,
      );
  static get bodyMediumffa2a2a7 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFA2A2A7),
      );
  static get bodySmallABeeZeeBlack900 =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: appTheme.black900.withOpacity(0.45),
        fontSize: 10.fSize,
      );
  static get bodySmallABeeZeeBlack90010 =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: appTheme.black900.withOpacity(0.4),
        fontSize: 10.fSize,
      );
  static get bodySmallABeeZeeBlack90010_1 =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: appTheme.black900.withOpacity(0.85),
        fontSize: 10.fSize,
      );
  static get bodySmallABeeZeeOnErrorContainer =>
      theme.textTheme.bodySmall!.aBeeZee.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallInterBluegray500 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallNunito => theme.textTheme.bodySmall!.nunito;
  static get bodySmallNunitoBlack900 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallNunitoBluegray500 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallNunitoGray500 =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallNunitoOnErrorContainer =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallNunitoPrimary =>
      theme.textTheme.bodySmall!.nunito.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallOrange600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.orange600,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallff4e65c2 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF4E65C2),
      );
  static get bodySmallff878787 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF878787),
      );
  static get bodySmallffa2a2a7 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFFA2A2A7),
      );
  // Display style
  static get displaySmallLato => theme.textTheme.displaySmall!.lato;
  // Headline text style
  static get headlineLargeCyan600 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.cyan600,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallGray800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallGray90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get headlineSmallLato => theme.textTheme.headlineSmall!.lato.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLatoGray90002 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallLatoOnErrorContainer =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeDeeporangeA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepOrangeA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeLatoDeeporangeA20001 =>
      theme.textTheme.labelLarge!.lato.copyWith(
        color: appTheme.deepOrangeA20001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSanFranciscoDisplayBluegray400 =>
      theme.textTheme.labelLarge!.sanFranciscoDisplay.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargefffca748 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFFCA748),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumLatoff0166ff =>
      theme.textTheme.labelMedium!.lato.copyWith(
        color: Color(0XFF0166FF),
      );
  static get labelMediumLatoff878787 =>
      theme.textTheme.labelMedium!.lato.copyWith(
        color: Color(0XFF878787),
      );
  static get labelMediumff0166ff => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF0166FF),
      );
  static get labelMediumff878787 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF878787),
      );
  // Title text style
  static get titleLargeGray90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleLargeGray90004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90004,
      );
  static get titleLargeInterOrange400 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.orange400,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeNunito => theme.textTheme.titleLarge!.nunito.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleLargeNunitoBlack900 =>
      theme.textTheme.titleLarge!.nunito.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeNunito_1 => theme.textTheme.titleLarge!.nunito;
  static get titleLargeNunitofffd9b2f =>
      theme.textTheme.titleLarge!.nunito.copyWith(
        color: Color(0XFFFD9B2F),
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Bold_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlue400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90004 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90004,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray90002 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90002,
        fontSize: 19.fSize,
      );
  static get titleMediumLato => theme.textTheme.titleMedium!.lato.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumLatoBlack900 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoGray90001 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLatoGray90001Medium =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLatoGray90004 =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: appTheme.gray90004,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLatoPrimaryContainer =>
      theme.textTheme.titleMedium!.lato.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLime80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lime80001,
        fontWeight: FontWeight.w900,
      );
  static get titleMediumPoppinsGray90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray90001Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRed400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red400,
        fontSize: 18.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff18191f => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF18191F),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff1e1e1e => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF1E1E1E),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeppurpleA100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA100,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleSmallInterOnErrorContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallInterOrangeA20002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.orangeA20002,
        fontSize: 14.fSize,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallInterRed800 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.red800,
        fontSize: 14.fSize,
      );
  static get titleSmallLato => theme.textTheme.titleSmall!.lato.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoBluegray100 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.blueGray100,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLatoBluegray700 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.blueGray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallLatoBold => theme.textTheme.titleSmall!.lato.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoDeeporangeA20001 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.deepOrangeA20001,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoGray90001 =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get titleSmallLatoOnErrorContainer =>
      theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallLatoPrimary => theme.textTheme.titleSmall!.lato.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallLatoRed800 => theme.textTheme.titleSmall!.lato.copyWith(
        color: appTheme.red800,
        fontSize: 14.fSize,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallOnErrorContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsGray90001 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get titleSmallRed800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red800,
        fontSize: 14.fSize,
      );
  static get titleSmallWorkSansGray80001 =>
      theme.textTheme.titleSmall!.workSans.copyWith(
        color: appTheme.gray80001,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sanFranciscoDisplay {
    return copyWith(
      fontFamily: 'San Francisco Display',
    );
  }

  TextStyle get workSans {
    return copyWith(
      fontFamily: 'Work Sans',
    );
  }

  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }
}
