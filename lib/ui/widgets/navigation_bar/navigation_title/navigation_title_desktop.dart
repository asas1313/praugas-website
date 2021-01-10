import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar_logo.dart';

class NavigationTitleDesktop extends StatelessWidget {
  final String title;

  const NavigationTitleDesktop({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size.fromHeight(50)),
      alignment: Alignment.topLeft,
      child: Row(children: [
        NavBarLogo(),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: titleTextStyle(DeviceScreenType.desktop),
          ),
        ),
      ]),
    );
  }
}
