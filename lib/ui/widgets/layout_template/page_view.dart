import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'page_content_desktop.dart';
import 'page_content_mobile.dart';

class PageContentView extends StatelessWidget {
  final String title;
  final String content;
  const PageContentView(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PageContentMobile(title, content),
      desktop: PageContentDesktop(title, content),
    );
  }
}
