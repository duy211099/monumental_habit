import 'package:flutter/material.dart';
import 'package:monumental_habit/shared/app_colors.dart';
// Text Styles

// To make it clear which weight we are using, we'll define the weight even for regular
// fonts
class KTextStyle {
  static const TextStyle heading1Style = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w400,
    color: KColors.eclipse,
  );

  static const TextStyle heading2Style = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: KColors.eclipse,
  );

  static const TextStyle heading3Style = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: KColors.eclipse,
  );

  static const TextStyle headlineStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: KColors.eclipse,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: KColors.eclipse,
  );

  static const TextStyle subheadingStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: KColors.eclipse,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: KColors.eclipse,
  );
}
