import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a Page Title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.mobile ? 28 : 38;
  return TextStyle(
      fontWeight: FontWeight.w800,
      height: 0.9,
      fontSize: titleSize,
      color: primaryColor);
}

/// Return the style for Description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.mobile ? 16 : 21;

  return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: descriptionSize,
      height: 1.2,
      color: primaryColor);
}

/// Return the style for Buttons text on a page based on the [deviceScreenType] passed in.
TextStyle buttonTextStyle() {
  return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      height: 1.2,
      color: scaffoldBackgroundColor);
}

/// Return the style for Menu item text on a page based on the [deviceScreenType] passed in.
TextStyle menuTextStyle() {
  return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24.0,
      height: 1.2,
      color: bodyColor);
}
