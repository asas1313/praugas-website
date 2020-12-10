import 'package:flutter/material.dart';
import 'package:praugas_site/ui/widgets/layout_template/call_to_action/call_to_action.dart';

import 'page_details.dart';

class PageContentDesktop extends StatelessWidget {
  final String caption;
  final String details;
  const PageContentDesktop(this.caption, this.details);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PageDetails(
          caption: caption,
          details: details,
        ),
        Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: CallToAction(),
          ),
        )
      ],
    );
  }
}
