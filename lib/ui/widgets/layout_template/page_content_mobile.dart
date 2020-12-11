import 'package:flutter/material.dart';
import 'package:praugas_site/ui/widgets/layout_template/call_to_action/call_to_action.dart';

import 'page_details.dart';

class PageContentMobile extends StatelessWidget {
  final String caption;
  final String details;
  const PageContentMobile(this.caption, this.details);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PageDetails(
          caption: caption,
          details: details,
        ),
        SizedBox(
          height: 10,
        ),
        CallToAction(),
      ],
    ));
  }
}
