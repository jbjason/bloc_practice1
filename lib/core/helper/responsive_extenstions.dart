import 'package:bloc_practice1/core/helper/reponsive_helper.dart';
import 'package:flutter/material.dart';

extension ResponsiveExtensions on BuildContext {
  // Responsive text styles
  TextStyle get responsiveDisplayLarge => const TextStyle().copyWith(
        fontSize: ResponsiveHelper.getFontSize(
          this,
          mobile: 16,
          tablet: 18,
          desktop: 20,
        ),
      );

  // Responsive padding
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(
        horizontal: ResponsiveHelper.getValue(
          this,
          mobile: 16.0,
          tablet: 24.0,
          desktop: 32.0,
        ),
      );

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(
        vertical: ResponsiveHelper.getValue(
          this,
          mobile: 12.0,
          tablet: 16.0,
          desktop: 20.0,
        ),
      );

  EdgeInsets get allPadding => EdgeInsets.all(
        ResponsiveHelper.getValue(
          this,
          mobile: 16.0,
          tablet: 20.0,
          desktop: 24.0,
        ),
      );
}
