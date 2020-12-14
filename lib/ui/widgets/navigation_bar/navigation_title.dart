import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:praugas_site/ui/styles/app_colors.dart';

import 'navbar_logo.dart';

class NavigationTitle extends StatelessWidget {
  final String title;

  const NavigationTitle({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size.fromHeight(50)),
      alignment: Alignment.topLeft,
      child: Row(children: [
        NavBarLogo(),
        Text(
          title,
          style: TextStyle(fontSize: 40, color: primaryColor),
        ),
      ]),
    );
  }
}
