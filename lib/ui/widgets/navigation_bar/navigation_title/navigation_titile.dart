import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_title_desktop.dart';
import 'navigation_title_mobile.dart';

class NavigationTitle extends StatelessWidget {
  final String title;

  const NavigationTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavigationTitleDesktop(title: title),
      tablet: NavigationTitleMobile(title: title),
      mobile: NavigationTitleMobile(title: title),
    );
  }
}
